
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TYPE_STRW ;
 char* __nosan_strncpy (char*,char const*,size_t) ;
 int kasan_check_range (char*,size_t,int ) ;

char *
__asan_strncpy(char *dst, const char *src, size_t sz)
{
 kasan_check_range(dst, sz, TYPE_STRW);
 return __nosan_strncpy(dst, src, sz);
}
