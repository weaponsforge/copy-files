::----------------------------------------------------------
:: Copy all directories and files recursively into a 
:: specified directory. Overwrites existing files.
:: weaponsforge;20210827
::----------------------------------------------------------

@echo off

setlocal ENABLEDELAYEDEXPANSION
set replace=kyp

echo Enter a directory [%replace%]
set /p replace="or press enter to proceed:"

set curr_path="%cd%"
set curr_path=%curr_path:local_kyp=!replace!%

xcopy /s /A . %curr_path% /y /i
pause
