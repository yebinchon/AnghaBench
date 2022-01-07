
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TYPE_MEMW ;
 int __nosan_bzero (void*,size_t) ;
 int kasan_check_range (void*,size_t,int ) ;

void
__asan_bzero(void *dst, size_t sz)
{
 kasan_check_range(dst, sz, TYPE_MEMW);
 __nosan_bzero(dst, sz);
}
