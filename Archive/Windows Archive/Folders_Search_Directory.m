%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% @AutoGenerated
%
% Filename: Folders_Search_Directory.m
% Author: Alper Ender
% Date: November 2017
% Description:
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\

function Folders_Search_Directory( directory )

% YOU NEED TO ADD THIS FILE TO YOUR PATH

% Changing to that directory
cd(directory)

% Obtaining the slash depending on OS
if isunix
    slash = '/';
else
    slash = '\';
end

items = dir;
    
% Looking at all the items in the directory
for i = 1:length(items)
    
    % Obtaining the name of all the items
    itemName = items(i).name;
    
    % If it is a valid file/folder
    if ~strcmpi(itemName(1),'.') & ~strcmpi(itemName,'..') & ~strcmpi(itemName,'.DS_Store')
        
        % If it is a folder
        if isdir(itemName)
            
            % Go to the next layer
            nextLayer = [pwd() slash itemName];
            searchDirectory(nextLayer)
            
        else
            
            disp(directory)
            % DO WHATEVER YOU NEED TO DO HERE
            
        end
    end
end

cd('../')

