
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* dlopen (char const*,int) ;

void *vcos_dlopen(const char *name, int mode)
{
   return dlopen(name, mode);
}
