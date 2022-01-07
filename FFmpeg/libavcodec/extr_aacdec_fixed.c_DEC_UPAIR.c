
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int *DEC_UPAIR(int *dst, unsigned idx, unsigned sign)
{
    dst[0] = (idx & 15) * (1 - (sign & 0xFFFFFFFE));
    dst[1] = (idx >> 4 & 15) * (1 - ((sign & 1) * 2));

    return dst + 2;
}
