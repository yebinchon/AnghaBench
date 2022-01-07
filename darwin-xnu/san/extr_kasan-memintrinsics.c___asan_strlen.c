
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TYPE_STRR ;
 size_t __nosan_strlen (char const*) ;
 int kasan_check_range (char const*,size_t,int ) ;

size_t
__asan_strlen(const char *src)
{
 size_t sz = __nosan_strlen(src);
 kasan_check_range(src, sz + 1, TYPE_STRR);
 return sz;
}
