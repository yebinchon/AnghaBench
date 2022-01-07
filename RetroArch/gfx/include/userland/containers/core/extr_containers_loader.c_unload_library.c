
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vcos_dlclose (void*) ;

__attribute__((used)) static void unload_library(void *handle)
{
   vcos_dlclose(handle);
}
