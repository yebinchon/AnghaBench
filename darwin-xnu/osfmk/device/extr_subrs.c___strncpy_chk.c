
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ __improbable (int) ;
 int panic (char*,char*,char*,size_t,size_t) ;
 char* strncpy (char*,char*,size_t) ;

char *
__strncpy_chk (char *restrict dst, char *restrict src,
               size_t len, size_t chk_size)
{
    if (__improbable(chk_size < len)) {
        panic("__strncpy_chk object size check failed: dst %p, src %p, (%zu < %zu)", dst, src, chk_size, len);
    }
    return strncpy(dst, src, len);
}
