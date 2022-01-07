
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TYPE_STRR ;
 size_t __nosan_strnlen (char const*,size_t) ;
 int kasan_check_range (char const*,size_t,int ) ;

size_t
__asan_strnlen(const char *src, size_t sz)
{
 kasan_check_range(src, sz, TYPE_STRR);
 return __nosan_strnlen(src, sz);
}
