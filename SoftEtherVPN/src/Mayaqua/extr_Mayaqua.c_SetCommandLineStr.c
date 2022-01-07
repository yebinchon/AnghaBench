
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * CopyStr (char*) ;
 int * CopyStrToUni (int *) ;
 int Free (int *) ;
 int ParseCommandLineTokens () ;
 int * cmdline ;
 int * uni_cmdline ;

void SetCommandLineStr(char *str)
{

 if (str == ((void*)0))
 {
  if (cmdline != ((void*)0))
  {
   Free(cmdline);
  }
  cmdline = ((void*)0);
 }
 else
 {
  if (cmdline != ((void*)0))
  {
   Free(cmdline);
  }
  cmdline = CopyStr(str);
 }

 if (cmdline == ((void*)0))
 {
  if (uni_cmdline != ((void*)0))
  {
   Free(uni_cmdline);
   uni_cmdline = ((void*)0);
  }
 }
 else
 {
  if (uni_cmdline != ((void*)0))
  {
   Free(uni_cmdline);
  }
  uni_cmdline = CopyStrToUni(cmdline);
 }

 ParseCommandLineTokens();
}
