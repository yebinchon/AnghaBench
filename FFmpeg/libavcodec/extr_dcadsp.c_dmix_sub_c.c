
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptrdiff_t ;
typedef int int32_t ;


 scalar_t__ mul15 (int const,int) ;

__attribute__((used)) static void dmix_sub_c(int32_t *dst, const int32_t *src, int coeff, ptrdiff_t len)
{
    int i;

    for (i = 0; i < len; i++)
        dst[i] -= (unsigned)mul15(src[i], coeff);
}
