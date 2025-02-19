
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v8i16 ;
typedef int v16u8 ;
typedef int uint8_t ;
typedef int int32_t ;
typedef int int16_t ;


 int ADD4 (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int CLIP_SH8_0_255 (int ,int ,int ,int ,int ,int ,int ,int ) ;
 int LD_UB2 (int *,int,int ,int ) ;
 int PCKEV_B4_UB (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int ROUND_POWER_OF_TWO (int,int) ;
 int ST_UB2 (int ,int ,int *,int) ;
 int UNPCK_UB_SH (int ,int ,int ) ;
 int VP9_DCT_CONST_BITS ;
 int __msa_fill_h (int) ;
 int cospi_16_64 ;

__attribute__((used)) static void vp9_idct32x32_1_add_msa(int16_t *input, uint8_t *dst,
                                    int32_t dst_stride)
{
    int32_t i;
    int16_t out;
    v16u8 dst0, dst1, dst2, dst3, tmp0, tmp1, tmp2, tmp3;
    v8i16 res0, res1, res2, res3, res4, res5, res6, res7, vec;

    out = ROUND_POWER_OF_TWO((input[0] * cospi_16_64), VP9_DCT_CONST_BITS);
    out = ROUND_POWER_OF_TWO((out * cospi_16_64), VP9_DCT_CONST_BITS);
    out = ROUND_POWER_OF_TWO(out, 6);
    input[0] = 0;

    vec = __msa_fill_h(out);

    for (i = 16; i--;) {
        LD_UB2(dst, 16, dst0, dst1);
        LD_UB2(dst + dst_stride, 16, dst2, dst3);

        UNPCK_UB_SH(dst0, res0, res4);
        UNPCK_UB_SH(dst1, res1, res5);
        UNPCK_UB_SH(dst2, res2, res6);
        UNPCK_UB_SH(dst3, res3, res7);
        ADD4(res0, vec, res1, vec, res2, vec, res3, vec, res0, res1, res2,
             res3);
        ADD4(res4, vec, res5, vec, res6, vec, res7, vec, res4, res5, res6,
             res7);
        CLIP_SH8_0_255(res0, res1, res2, res3, res4, res5, res6, res7);
        PCKEV_B4_UB(res4, res0, res5, res1, res6, res2, res7, res3,
                    tmp0, tmp1, tmp2, tmp3);

        ST_UB2(tmp0, tmp1, dst, 16);
        dst += dst_stride;
        ST_UB2(tmp2, tmp3, dst, 16);
        dst += dst_stride;
    }
}
