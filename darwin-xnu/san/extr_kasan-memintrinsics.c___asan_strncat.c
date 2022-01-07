
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TYPE_STRW ;
 char* __nosan_strncat (char*,char const*,size_t) ;
 int kasan_check_range (char*,scalar_t__,int ) ;
 scalar_t__ strlen (char*) ;

char *
__asan_strncat(char *dst, const char *src, size_t sz)
{
 kasan_check_range(dst, strlen(dst) + sz + 1, TYPE_STRW);
 return __nosan_strncat(dst, src, sz);
}
