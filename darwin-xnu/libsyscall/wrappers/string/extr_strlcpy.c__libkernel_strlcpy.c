
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _libkernel_memmove (char*,char const*,size_t const) ;
 size_t _libkernel_strlen (char const*) ;

__attribute__((visibility("hidden")))
size_t
_libkernel_strlcpy(char * restrict dst, const char * restrict src, size_t maxlen) {
    const size_t srclen = _libkernel_strlen(src);
    if (srclen < maxlen) {
        _libkernel_memmove(dst, src, srclen+1);
    } else if (maxlen != 0) {
        _libkernel_memmove(dst, src, maxlen-1);
        dst[maxlen-1] = '\0';
    }
    return srclen;
}
