
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v8i16 ;
typedef int v4i32 ;
typedef int v16u8 ;
typedef int v16i8 ;
typedef int uint8_t ;
typedef int int8_t ;
typedef int int32_t ;


 int HEVC_FILT_4TAP_SH (int ,int ,int ,int ) ;
 int HEVC_UNIW_RND_CLIP4_MAX_SATU_H (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int ILVR_B2_SB (int ,int ,int ,int ,int ,int ) ;
 int LD_SB7 (int *,int,int ,int ,int ,int ,int ,int ,int ) ;
 int LD_SH (int const*) ;
 int PCKEV_B2_UB (int ,int ,int ,int ,int ,int ) ;
 int SPLATI_H2_SH (int ,int ,int,int ,int ) ;
 int ST_D4 (int ,int ,int ,int,int ,int,int *,int) ;
 int XORI_B7_128_SB (int ,int ,int ,int ,int ,int ,int ) ;
 int __msa_adds_s_h (int ,int ) ;
 int __msa_fill_h (int) ;
 int __msa_fill_w (int) ;
 int __msa_srar_h (int ,int ) ;

__attribute__((used)) static void hevc_vt_uniwgt_4t_8x4_msa(uint8_t *src,
                                      int32_t src_stride,
                                      uint8_t *dst,
                                      int32_t dst_stride,
                                      const int8_t *filter,
                                      int32_t weight,
                                      int32_t offset,
                                      int32_t rnd_val)
{
    v16u8 out0, out1;
    v16i8 src0, src1, src2, src3, src4;
    v16i8 src10_r, src32_r, src21_r, src43_r;
    v16i8 src5, src6, src54_r, src65_r;
    v8i16 filt0, filt1;
    v8i16 dst0, dst1, dst2, dst3;
    v8i16 filter_vec, weight_vec_h, offset_vec, denom_vec;
    v4i32 weight_vec, rnd_vec;

    src -= src_stride;

    weight = weight & 0x0000FFFF;

    weight_vec = __msa_fill_w(weight);
    rnd_vec = __msa_fill_w(rnd_val);

    weight *= 128;
    rnd_val -= 6;

    weight_vec_h = __msa_fill_h(weight);
    offset_vec = __msa_fill_h(offset);
    denom_vec = __msa_fill_h(rnd_val);

    weight_vec_h = __msa_srar_h(weight_vec_h, denom_vec);
    offset_vec = __msa_adds_s_h(offset_vec, weight_vec_h);

    filter_vec = LD_SH(filter);
    SPLATI_H2_SH(filter_vec, 0, 1, filt0, filt1);

    LD_SB7(src, src_stride, src0, src1, src2, src3, src4, src5, src6);
    src += (3 * src_stride);
    XORI_B7_128_SB(src0, src1, src2, src3, src4, src5, src6);
    ILVR_B2_SB(src1, src0, src2, src1, src10_r, src21_r);
    ILVR_B2_SB(src3, src2, src4, src3, src32_r, src43_r);
    ILVR_B2_SB(src5, src4, src6, src5, src54_r, src65_r);
    dst0 = HEVC_FILT_4TAP_SH(src10_r, src32_r, filt0, filt1);
    dst1 = HEVC_FILT_4TAP_SH(src21_r, src43_r, filt0, filt1);
    dst2 = HEVC_FILT_4TAP_SH(src32_r, src54_r, filt0, filt1);
    dst3 = HEVC_FILT_4TAP_SH(src43_r, src65_r, filt0, filt1);
    HEVC_UNIW_RND_CLIP4_MAX_SATU_H(dst0, dst1, dst2, dst3, weight_vec,
                                   offset_vec, rnd_vec, dst0, dst1, dst2,
                                   dst3);
    PCKEV_B2_UB(dst1, dst0, dst3, dst2, out0, out1);
    ST_D4(out0, out1, 0, 1, 0, 1, dst, dst_stride);
}
