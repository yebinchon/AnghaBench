
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINTFLOAT ;
typedef int INTFLOAT ;


 scalar_t__ AAC_MADD28 (int const,int const,int const,int const) ;

__attribute__((used)) static void ps_add_squares_c(INTFLOAT *dst, const INTFLOAT (*src)[2], int n)
{
    int i;
    for (i = 0; i < n; i++)
        dst[i] += (UINTFLOAT)AAC_MADD28(src[i][0], src[i][0], src[i][1], src[i][1]);
}
