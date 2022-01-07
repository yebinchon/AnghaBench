
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ v8i16 ;
typedef int v4i32 ;
typedef scalar_t__ v16u8 ;
typedef int v16i8 ;
typedef int uint8_t ;
typedef int int8_t ;
typedef int int32_t ;


 scalar_t__ HEVC_FILT_4TAP_SH (int ,int ,scalar_t__,scalar_t__) ;
 int HEVC_UNIW_RND_CLIP2_MAX_SATU_H (scalar_t__,scalar_t__,int ,scalar_t__,int ,scalar_t__,scalar_t__) ;
 int ILVR_B2_SB (int ,int ,int ,int ,int ,int ) ;
 int LD_SB5 (int *,int,int ,int ,int ,int ,int ) ;
 scalar_t__ LD_SH (int const*) ;
 int SPLATI_H2_SH (scalar_t__,int ,int,scalar_t__,scalar_t__) ;
 int ST_D2 (scalar_t__,int ,int,int *,int) ;
 int XORI_B5_128_SB (int ,int ,int ,int ,int ) ;
 scalar_t__ __msa_adds_s_h (scalar_t__,scalar_t__) ;
 scalar_t__ __msa_fill_h (int) ;
 int __msa_fill_w (int) ;
 scalar_t__ __msa_pckev_b (int ,int ) ;
 scalar_t__ __msa_srar_h (scalar_t__,scalar_t__) ;

__attribute__((used)) static void hevc_vt_uniwgt_4t_8x2_msa(uint8_t *src,
                                      int32_t src_stride,
                                      uint8_t *dst,
                                      int32_t dst_stride,
                                      const int8_t *filter,
                                      int32_t weight,
                                      int32_t offset,
                                      int32_t rnd_val)
{
    v16u8 out;
    v16i8 src0, src1, src2, src3, src4;
    v16i8 src10_r, src32_r, src21_r, src43_r;
    v8i16 dst0, dst1;
    v8i16 filt0, filt1;
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

    LD_SB5(src, src_stride, src0, src1, src2, src3, src4);
    XORI_B5_128_SB(src0, src1, src2, src3, src4);
    ILVR_B2_SB(src1, src0, src2, src1, src10_r, src21_r);
    ILVR_B2_SB(src3, src2, src4, src3, src32_r, src43_r);
    dst0 = HEVC_FILT_4TAP_SH(src10_r, src32_r, filt0, filt1);
    dst1 = HEVC_FILT_4TAP_SH(src21_r, src43_r, filt0, filt1);

    HEVC_UNIW_RND_CLIP2_MAX_SATU_H(dst0, dst1, weight_vec, offset_vec, rnd_vec,
                                   dst0, dst1);

    out = (v16u8) __msa_pckev_b((v16i8) dst1, (v16i8) dst0);
    ST_D2(out, 0, 1, dst, dst_stride);
}
