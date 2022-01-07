
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v8i16 ;
typedef int v16u8 ;
typedef int v16i8 ;
typedef int uint8_t ;
typedef int uint64_t ;
typedef int int32_t ;


 int CLIP_SH8_0_255 (int ,int ,int ,int ,int ,int ,int ,int ) ;
 int ILVRL_B2_SB (int ,int ,int ,int ) ;
 int INSERT_D2_UB (int ,int ,int ) ;
 int LD4 (int *,int,int ,int ,int ,int ) ;
 int PCKEV_B2_UB (int ,int ,int ,int ,int ,int ) ;
 int SRA_4V (int ,int ,int ,int ,int ) ;
 int ST_D8 (int ,int ,int ,int ,int ,int,int ,int,int ,int,int ,int,int *,int) ;
 int XORI_B8_128_UB (int ,int ,int ,int ,int ,int ,int ,int ) ;
 int __msa_dpadd_s_h (int ,int ,int ) ;
 int __msa_fill_b (int) ;
 int __msa_fill_h (int) ;
 int __msa_ilvev_b (int ,int ) ;

__attribute__((used)) static void avc_biwgt_8x8_msa(uint8_t *src, uint8_t *dst, int32_t stride,
                              int32_t log2_denom, int32_t src_weight,
                              int32_t dst_weight, int32_t offset_in)
{
    uint64_t tp0, tp1, tp2, tp3;
    v16i8 src_wgt, dst_wgt, wgt, vec0, vec1, vec2, vec3, vec4, vec5, vec6, vec7;
    v16u8 src0, src1, src2, src3, dst0, dst1, dst2, dst3;
    v8i16 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7, denom, offset;

    offset_in = (unsigned) ((offset_in + 1) | 1) << log2_denom;
    offset_in += (128 * (src_weight + dst_weight));

    src_wgt = __msa_fill_b(src_weight);
    dst_wgt = __msa_fill_b(dst_weight);
    offset = __msa_fill_h(offset_in);
    denom = __msa_fill_h(log2_denom + 1);
    wgt = __msa_ilvev_b(dst_wgt, src_wgt);

    LD4(src, stride, tp0, tp1, tp2, tp3);
    INSERT_D2_UB(tp0, tp1, src0);
    INSERT_D2_UB(tp2, tp3, src1);
    LD4(src + 4 * stride, stride, tp0, tp1, tp2, tp3);
    INSERT_D2_UB(tp0, tp1, src2);
    INSERT_D2_UB(tp2, tp3, src3);
    LD4(dst, stride, tp0, tp1, tp2, tp3);
    INSERT_D2_UB(tp0, tp1, dst0);
    INSERT_D2_UB(tp2, tp3, dst1);
    LD4(dst + 4 * stride, stride, tp0, tp1, tp2, tp3);
    INSERT_D2_UB(tp0, tp1, dst2);
    INSERT_D2_UB(tp2, tp3, dst3);
    XORI_B8_128_UB(src0, src1, src2, src3, dst0, dst1, dst2, dst3);
    ILVRL_B2_SB(dst0, src0, vec0, vec1);
    ILVRL_B2_SB(dst1, src1, vec2, vec3);
    ILVRL_B2_SB(dst2, src2, vec4, vec5);
    ILVRL_B2_SB(dst3, src3, vec6, vec7);
    tmp0 = __msa_dpadd_s_h(offset, wgt, vec0);
    tmp1 = __msa_dpadd_s_h(offset, wgt, vec1);
    tmp2 = __msa_dpadd_s_h(offset, wgt, vec2);
    tmp3 = __msa_dpadd_s_h(offset, wgt, vec3);
    tmp4 = __msa_dpadd_s_h(offset, wgt, vec4);
    tmp5 = __msa_dpadd_s_h(offset, wgt, vec5);
    tmp6 = __msa_dpadd_s_h(offset, wgt, vec6);
    tmp7 = __msa_dpadd_s_h(offset, wgt, vec7);
    SRA_4V(tmp0, tmp1, tmp2, tmp3, denom);
    SRA_4V(tmp4, tmp5, tmp6, tmp7, denom);
    CLIP_SH8_0_255(tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7);
    PCKEV_B2_UB(tmp1, tmp0, tmp3, tmp2, dst0, dst1);
    PCKEV_B2_UB(tmp5, tmp4, tmp7, tmp6, dst2, dst3);
    ST_D8(dst0, dst1, dst2, dst3, 0, 1, 0, 1, 0, 1, 0, 1, dst, stride);
}
