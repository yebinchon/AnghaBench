
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
proc_libversion(int *major, int * minor)
{

 if (major != ((void*)0))
  *major = 1;
 if (minor != ((void*)0))
  *minor = 1;
 return(0);
}
