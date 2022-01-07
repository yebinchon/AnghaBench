
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptrdiff_t ;
typedef int int32_t ;


 int clip23 (int ) ;
 int mul17 (int ,int ) ;

__attribute__((used)) static void decode_joint_c(int32_t **dst, int32_t **src,
                           const int32_t *scale_factors,
                           ptrdiff_t sb_start, ptrdiff_t sb_end,
                           ptrdiff_t ofs, ptrdiff_t len)
{
    int i, j;

    for (i = sb_start; i < sb_end; i++) {
        int32_t scale = scale_factors[i];
        for (j = 0; j < len; j++)
            dst[i][j + ofs] = clip23(mul17(src[i][j + ofs], scale));
    }
}
