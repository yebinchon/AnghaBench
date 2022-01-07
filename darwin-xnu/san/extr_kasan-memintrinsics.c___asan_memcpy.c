
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TYPE_MEMR ;
 int TYPE_MEMW ;
 void* __nosan_memcpy (void*,void const*,size_t) ;
 int kasan_check_range (void*,size_t,int ) ;

void *
__asan_memcpy(void *dst, const void *src, size_t sz)
{
 kasan_check_range(src, sz, TYPE_MEMR);
 kasan_check_range(dst, sz, TYPE_MEMW);
 return __nosan_memcpy(dst, src, sz);
}
