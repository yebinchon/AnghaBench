
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptrdiff_t ;
typedef scalar_t__ int32_t ;


 scalar_t__ mul23 (scalar_t__ const,int) ;

__attribute__((used)) static void dmix_sub_xch_c(int32_t *dst1, int32_t *dst2,
                           const int32_t *src, ptrdiff_t len)
{
    int i;

    for (i = 0; i < len; i++) {
        int32_t cs = mul23(src[i], 5931520 );
        dst1[i] -= cs;
        dst2[i] -= cs;
    }
}
