
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ __improbable (int) ;
 void* memmove (void*,void const*,size_t) ;
 int panic (char*,void*,void const*,size_t,size_t) ;

void *
__memmove_chk(void *dst, void const *src, size_t s, size_t chk_size)
{
    if (__improbable(chk_size < s))
        panic("__memmove_chk object size check failed: dst %p, src %p, (%zu < %zu)", dst, src, chk_size, s);
    return memmove(dst, src, s);
}
