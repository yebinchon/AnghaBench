
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* CopyStr (char*) ;
 char* cmdline ;

char *GetCommandLineStr()
{
 if (cmdline == ((void*)0))
 {
  return CopyStr("");
 }
 else
 {
  return CopyStr(cmdline);
 }
}
