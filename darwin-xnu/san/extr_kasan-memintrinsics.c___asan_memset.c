
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TYPE_MEMW ;
 void* __nosan_memset (void*,int,size_t) ;
 int kasan_check_range (void*,size_t,int ) ;

void *
__asan_memset(void *dst, int c, size_t sz)
{
 kasan_check_range(dst, sz, TYPE_MEMW);
 return __nosan_memset(dst, c, sz);
}
