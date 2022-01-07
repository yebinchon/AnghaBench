
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int * UniCopyStr (char*) ;
 char* uni_cmdline ;

wchar_t *GetCommandLineUniStr()
{
 if (uni_cmdline == ((void*)0))
 {
  return UniCopyStr(L"");
 }
 else
 {
  return UniCopyStr(uni_cmdline);
 }
}
