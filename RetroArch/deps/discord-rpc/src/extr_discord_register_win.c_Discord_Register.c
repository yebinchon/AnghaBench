
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int openCommand ;


 int CP_UTF8 ;
 int Discord_RegisterW (int *,int const*) ;
 int MultiByteToWideChar (int ,int ,char const*,int,int *,int const) ;

void Discord_Register(const char* applicationId, const char* command)
{
    wchar_t openCommand[1024];
    const wchar_t* wcommand = ((void*)0);
    wchar_t appId[32];

    MultiByteToWideChar(CP_UTF8, 0, applicationId, -1, appId, 32);
    if (command && command[0])
    {
        const int commandBufferLen =
           sizeof(openCommand) / sizeof(*openCommand);
        MultiByteToWideChar(CP_UTF8, 0, command, -1,
              openCommand, commandBufferLen);
        wcommand = openCommand;
    }

    Discord_RegisterW(appId, wcommand);
}
