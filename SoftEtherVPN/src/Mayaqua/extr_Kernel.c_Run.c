
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OSRun (char*,char*,int,int) ;

bool Run(char *filename, char *arg, bool hide, bool wait)
{

 if (filename == ((void*)0))
 {
  return 0;
 }

 return OSRun(filename, arg, hide, wait);
}
