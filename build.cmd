@echo off
if not exist packages\FAKE\tools\Fake.exe ( 
  .nuget\nuget.exe install FAKE -OutputDirectory packages -Version 2.2.11
)
packages\FAKE\tools\FAKE.exe build.fsx %* 
pause
