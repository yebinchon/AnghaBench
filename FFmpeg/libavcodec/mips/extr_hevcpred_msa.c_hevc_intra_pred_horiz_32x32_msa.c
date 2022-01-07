
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v16i8 ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef int int32_t ;


 int ST_SB2 (int ,int ,int *,int) ;
 int __msa_fill_b (int ) ;

__attribute__((used)) static void hevc_intra_pred_horiz_32x32_msa(const uint8_t *src_top,
                                            const uint8_t *src_left,
                                            uint8_t *dst, int32_t stride)
{
    uint32_t row;
    uint8_t inp0, inp1, inp2, inp3;
    v16i8 src0, src1, src2, src3;

    for (row = 0; row < 8; row++) {
        inp0 = src_left[row * 4];
        inp1 = src_left[row * 4 + 1];
        inp2 = src_left[row * 4 + 2];
        inp3 = src_left[row * 4 + 3];

        src0 = __msa_fill_b(inp0);
        src1 = __msa_fill_b(inp1);
        src2 = __msa_fill_b(inp2);
        src3 = __msa_fill_b(inp3);

        ST_SB2(src0, src0, dst, 16);
        dst += stride;
        ST_SB2(src1, src1, dst, 16);
        dst += stride;
        ST_SB2(src2, src2, dst, 16);
        dst += stride;
        ST_SB2(src3, src3, dst, 16);
        dst += stride;
    }
}
