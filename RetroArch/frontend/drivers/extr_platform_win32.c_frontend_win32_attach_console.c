
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ATTACH_PARENT_PROCESS ;
 int AllocConsole () ;
 int AttachConsole (int ) ;
 scalar_t__ FILE_TYPE_UNKNOWN ;
 scalar_t__ GetFileType (int ) ;
 int GetStdHandle (int ) ;
 int STD_ERROR_HANDLE ;
 int STD_OUTPUT_HANDLE ;
 int SetConsoleTitle (char*) ;
 int console_needs_free ;
 int freopen (char*,char*,int ) ;
 int stderr ;
 int stdout ;

__attribute__((used)) static void frontend_win32_attach_console(void)
{
}
