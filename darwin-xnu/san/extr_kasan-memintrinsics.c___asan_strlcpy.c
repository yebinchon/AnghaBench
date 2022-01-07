
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TYPE_STRW ;
 size_t __nosan_strlcpy (char*,char const*,size_t) ;
 int kasan_check_range (char*,size_t,int ) ;

size_t
__asan_strlcpy(char *dst, const char *src, size_t sz)
{
 kasan_check_range(dst, sz, TYPE_STRW);
 return __nosan_strlcpy(dst, src, sz);
}
