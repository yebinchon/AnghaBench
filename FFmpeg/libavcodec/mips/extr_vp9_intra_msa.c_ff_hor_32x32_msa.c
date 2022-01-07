
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ v16u8 ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef int ptrdiff_t ;


 int LW (int const*) ;
 int ST_UB2 (scalar_t__,scalar_t__,int *,int) ;
 scalar_t__ __msa_fill_b (int) ;

void ff_hor_32x32_msa(uint8_t *dst, ptrdiff_t dst_stride, const uint8_t *src,
                      const uint8_t *top)
{
    uint32_t row, inp;
    v16u8 src0, src1, src2, src3;

    src += 28;
    for (row = 8; row--;) {
        inp = LW(src);
        src -= 4;

        src0 = (v16u8) __msa_fill_b(inp >> 24);
        src1 = (v16u8) __msa_fill_b(inp >> 16);
        src2 = (v16u8) __msa_fill_b(inp >> 8);
        src3 = (v16u8) __msa_fill_b(inp);

        ST_UB2(src0, src0, dst, 16);
        dst += dst_stride;
        ST_UB2(src1, src1, dst, 16);
        dst += dst_stride;
        ST_UB2(src2, src2, dst, 16);
        dst += dst_stride;
        ST_UB2(src3, src3, dst, 16);
        dst += dst_stride;
    }
}
