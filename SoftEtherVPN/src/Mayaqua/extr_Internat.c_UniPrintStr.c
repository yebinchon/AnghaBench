
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 char* CopyUniToStr (int *) ;
 int Free (char*) ;
 int Win32PrintW (int *) ;
 int fputs (char*,int ) ;
 int stdout ;

void UniPrintStr(wchar_t *string)
{

 if (string == ((void*)0))
 {
  return;
 }
 Win32PrintW(string);

}
