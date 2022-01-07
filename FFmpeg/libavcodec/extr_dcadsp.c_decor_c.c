
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptrdiff_t ;
typedef int int32_t ;
typedef int const SUINT ;



__attribute__((used)) static void decor_c(int32_t *dst, const int32_t *src, int coeff, ptrdiff_t len)
{
    int i;

    for (i = 0; i < len; i++)
        dst[i] += (SUINT)((int)(src[i] * (SUINT)coeff + (1 << 2)) >> 3);
}
