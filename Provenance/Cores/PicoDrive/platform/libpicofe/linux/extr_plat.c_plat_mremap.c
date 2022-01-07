
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* MAP_FAILED ;
 int MREMAP_MAYMOVE ;
 void* mremap (void*,size_t,size_t,int ) ;
 int printf (char*,void*,void*) ;

void *plat_mremap(void *ptr, size_t oldsize, size_t newsize)
{
 void *ret;

 ret = mremap(ptr, oldsize, newsize, MREMAP_MAYMOVE);
 if (ret == MAP_FAILED)
  return ((void*)0);
 if (ret != ptr)
  printf("warning: mremap moved: %p -> %p\n", ptr, ret);

 return ret;
}
