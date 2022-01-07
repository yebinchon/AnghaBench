
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TYPE_MEMR ;
 int TYPE_MEMW ;
 void* __nosan_memmove (void*,void const*,size_t) ;
 int kasan_check_range (void const*,size_t,int ) ;

void *
__asan_memmove(void *src, const void *dst, size_t sz)
{
 kasan_check_range(src, sz, TYPE_MEMR);
 kasan_check_range(dst, sz, TYPE_MEMW);
 return __nosan_memmove(src, dst, sz);
}
