
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dlclose (void*) ;

int vcos_dlclose (void *handle)
{
   return dlclose(handle);
}
