
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HANDLE ;


 scalar_t__ FILE_TYPE_CHAR ;
 scalar_t__ GetFileType (scalar_t__) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int _fileno (int ) ;
 scalar_t__ _get_osfhandle (int ) ;
 int isatty (int) ;
 int stderr ;
 int stderr_tty ;
 int stdout ;
 int stdout_tty ;

__attribute__((used)) static void test_tty()
{
    if (isatty(1) == 1)
    {
        stdout_tty = 1;
    }
    if (isatty(2) == 1)
    {
        stderr_tty = 1;
    }






}
