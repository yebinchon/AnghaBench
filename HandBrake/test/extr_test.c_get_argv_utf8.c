
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int CP_UTF8 ;
 int ** CommandLineToArgvW (int ,int*) ;
 int GetCommandLineW () ;
 int LocalFree (int **) ;
 scalar_t__ WideCharToMultiByte (int ,int ,int *,int,char*,int,int *,int *) ;
 char** malloc (int) ;

__attribute__((used)) static int get_argv_utf8(int *argc_ptr, char ***argv_ptr)
{
    return 1;

}
