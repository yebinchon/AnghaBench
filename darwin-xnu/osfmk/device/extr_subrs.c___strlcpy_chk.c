
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ __improbable (int) ;
 int panic (char*,char*,char const*,size_t,size_t) ;
 size_t strlcpy (char*,char const*,size_t) ;

size_t
__strlcpy_chk(char *dst, char const *src, size_t s, size_t chk_size)
{
    if (__improbable(chk_size < s))
        panic("__strlcpy_chk object size check failed: dst %p, src %p, (%zu < %zu)", dst, src, chk_size, s);
    return strlcpy(dst, src, s);
}
