
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int *DEC_SPAIR(int *dst, unsigned idx)
{
    dst[0] = (idx & 15) - 4;
    dst[1] = (idx >> 4 & 15) - 4;

    return dst + 2;
}
