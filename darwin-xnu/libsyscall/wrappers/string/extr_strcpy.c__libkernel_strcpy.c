
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _libkernel_memmove (char*,char const*,size_t const) ;
 size_t _libkernel_strlen (char const*) ;

__attribute__((visibility("hidden")))
char *
_libkernel_strcpy(char * restrict dst, const char * restrict src) {
 const size_t length = _libkernel_strlen(src);


    _libkernel_memmove(dst, src, length+1);

    return dst;
}
