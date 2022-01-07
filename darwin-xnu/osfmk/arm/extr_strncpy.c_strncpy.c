
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,char const*,size_t const) ;
 int memset (char*,int ,size_t) ;
 size_t strnlen (char const*,size_t) ;

char *
strncpy(char * dst, const char * src, size_t maxlen) {
    const size_t srclen = strnlen(src, maxlen);
    if (srclen < maxlen) {
        memcpy(dst, src, srclen);
        memset(dst+srclen, 0, maxlen - srclen);
    } else {
        memcpy(dst, src, maxlen);
    }
    return dst;
}
