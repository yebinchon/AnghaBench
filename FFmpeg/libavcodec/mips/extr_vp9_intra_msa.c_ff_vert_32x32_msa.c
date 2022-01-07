
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v16u8 ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef int ptrdiff_t ;


 int LD_UB (int const*) ;
 int ST_UB2 (int ,int ,int *,int) ;

void ff_vert_32x32_msa(uint8_t *dst, ptrdiff_t dst_stride, const uint8_t *left,
                       const uint8_t *src)
{
    uint32_t row;
    v16u8 src1, src2;

    src1 = LD_UB(src);
    src2 = LD_UB(src + 16);

    for (row = 32; row--;) {
        ST_UB2(src1, src2, dst, 16);
        dst += dst_stride;
    }
}
