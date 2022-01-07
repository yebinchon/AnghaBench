
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* vcos_malloc (size_t,char const*) ;

void *khrn_platform_malloc(size_t size, const char * name)
{
   return vcos_malloc(size, name);
}
