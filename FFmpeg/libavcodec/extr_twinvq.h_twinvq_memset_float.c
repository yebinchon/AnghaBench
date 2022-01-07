
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline void twinvq_memset_float(float *buf, float val, int size)
{
    while (size--)
        *buf++ = val;
}
