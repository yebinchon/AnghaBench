
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int CONSOLE ;


 int ConsoleWriteOutFile (int *,int *,int) ;
 scalar_t__ UniEndWith (int *,char*) ;
 int UniPrint (char*,int *,char*) ;

bool ConsoleLocalWrite(CONSOLE *c, wchar_t *str)
{

 if (c == ((void*)0) || str == ((void*)0))
 {
  return 0;
 }

 UniPrint(L"%s%s", str, (UniEndWith(str, L"\n") ? L"" : L"\n"));

 ConsoleWriteOutFile(c, str, 1);

 return 1;
}
