
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v16u8 ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef int ptrdiff_t ;


 int LD_UB (int const*) ;
 int ST_UB (int ,int *) ;

void ff_vert_16x16_msa(uint8_t *dst, ptrdiff_t dst_stride, const uint8_t *left,
                       const uint8_t *src)
{
    uint32_t row;
    v16u8 src0;

    src0 = LD_UB(src);

    for (row = 16; row--;) {
        ST_UB(src0, dst);
        dst += dst_stride;
    }
}
