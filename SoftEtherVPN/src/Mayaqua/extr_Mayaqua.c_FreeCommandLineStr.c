
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Free (int *) ;
 int SetCommandLineStr (int *) ;
 int * exename ;
 int * exename_w ;

void FreeCommandLineStr()
{
 SetCommandLineStr(((void*)0));

 if (exename != ((void*)0))
 {
  Free(exename);
  exename = ((void*)0);
 }

 if (exename_w != ((void*)0))
 {
  Free(exename_w);
  exename_w = ((void*)0);
 }
}
