
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int * CopyUniStr (int *) ;
 int Free (int *) ;
 int ParseCommandLineTokens () ;
 int * uni_cmdline ;

void SetCommandLineUniStr(wchar_t *str)
{
 if (uni_cmdline != ((void*)0))
 {
  Free(uni_cmdline);
 }
 if (str == ((void*)0))
 {
  uni_cmdline = ((void*)0);
 }
 else
 {
  uni_cmdline = CopyUniStr(str);
 }

 ParseCommandLineTokens();
}
