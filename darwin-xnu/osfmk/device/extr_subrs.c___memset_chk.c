
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ __improbable (int) ;
 void* memset (void*,int,size_t) ;
 int panic (char*,void*,int,size_t,size_t) ;

void *
__memset_chk(void *dst, int c, size_t s, size_t chk_size)
{
    if (__improbable(chk_size < s))
        panic("__memset_chk object size check failed: dst %p, c %c, (%zu < %zu)", dst, c, chk_size, s);
    return memset(dst, c, s);
}
