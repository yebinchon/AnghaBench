
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TYPE_MEMR ;
 int __nosan_bcmp (void const*,void const*,size_t) ;
 int kasan_check_range (void const*,size_t,int ) ;

int
__asan_bcmp(const void *a, const void *b, size_t len)
{
 kasan_check_range(a, len, TYPE_MEMR);
 kasan_check_range(b, len, TYPE_MEMR);
 return __nosan_bcmp(a, b, len);
}
