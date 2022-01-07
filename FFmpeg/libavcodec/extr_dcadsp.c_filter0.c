
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptrdiff_t ;
typedef int int32_t ;
typedef int SUINT32 ;


 scalar_t__ mul22 (int const,int ) ;

__attribute__((used)) static void filter0(SUINT32 *dst, const int32_t *src, int32_t coeff, ptrdiff_t len)
{
    int i;

    for (i = 0; i < len; i++)
        dst[i] -= mul22(src[i], coeff);
}
