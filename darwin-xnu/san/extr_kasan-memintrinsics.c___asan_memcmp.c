
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TYPE_MEMR ;
 int __nosan_memcmp (void const*,void const*,size_t) ;
 int kasan_check_range (void const*,size_t,int ) ;

int
__asan_memcmp(const void *a, const void *b, size_t n)
{
 kasan_check_range(a, n, TYPE_MEMR);
 kasan_check_range(b, n, TYPE_MEMR);
 return __nosan_memcmp(a, b, n);
}
