
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v8i16 ;
typedef int v4i32 ;
typedef int v16u8 ;
typedef scalar_t__ v16i8 ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef int int8_t ;
typedef int int32_t ;


 int ADD2 (int ,int ,int ,int ,int ,int ) ;
 int CLIP_SH4_0_255 (int ,int ,int ,int ) ;
 int HEVC_FILT_4TAP (int ,int ,int ,int ) ;
 int HEVC_FILT_4TAP_SH (scalar_t__,scalar_t__,int ,int ) ;
 int ILVRL_H2_SH (int ,int ,int ,int ) ;
 scalar_t__ LD_SB (int ) ;
 int LD_SB3 (int *,int,scalar_t__,scalar_t__,scalar_t__) ;
 int LD_SB4 (int *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int LD_SH (int const*) ;
 int MUL2 (int ,int ,int ,int ,int ,int ) ;
 int PCKEV_B2_UB (int ,int ,int ,int ,int ,int ) ;
 int PCKEV_H4_SH (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int SPLATI_H2_SH (int ,int ,int,int ,int ) ;
 int SPLATI_W2_SH (int ,int ,int ,int ) ;
 int SRAR_W4_SW (int ,int ,int ,int ,int ) ;
 int SRA_4V (int ,int ,int ,int ,int) ;
 int ST_D4 (int ,int ,int ,int,int ,int,int *,int) ;
 int UNPCK_R_SB_SH (int ,int ) ;
 int VSHF_B2_SB (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int XORI_B3_128_SB (scalar_t__,scalar_t__,scalar_t__) ;
 int XORI_B4_128_SB (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int __msa_fill_h (int) ;
 int __msa_fill_w (int) ;
 scalar_t__ __msa_srar_h (int ,int ) ;
 int ff_hevc_mask_arr ;

__attribute__((used)) static void hevc_hv_uniwgt_4t_8multx4mult_msa(uint8_t *src,
                                              int32_t src_stride,
                                              uint8_t *dst,
                                              int32_t dst_stride,
                                              const int8_t *filter_x,
                                              const int8_t *filter_y,
                                              int32_t height,
                                              int32_t weight,
                                              int32_t offset,
                                              int32_t rnd_val,
                                              int32_t width8mult)
{
    uint32_t loop_cnt, cnt;
    uint8_t *src_tmp;
    uint8_t *dst_tmp;
    v16u8 out0, out1;
    v16i8 src0, src1, src2, src3, src4, src5, src6;
    v8i16 filt0, filt1;
    v8i16 filt_h0, filt_h1, filter_vec;
    v16i8 mask0 = LD_SB(ff_hevc_mask_arr);
    v16i8 mask1;
    v16i8 vec0, vec1, vec2, vec3, vec4, vec5, vec6, vec7;
    v8i16 dst0, dst1, dst2, dst3, dst4, dst5, dst6, tmp0, tmp1, tmp2, tmp3;
    v8i16 dst10_r, dst32_r, dst54_r, dst21_r, dst43_r, dst65_r;
    v8i16 dst10_l, dst32_l, dst54_l, dst21_l, dst43_l, dst65_l;
    v4i32 dst0_r, dst0_l, dst1_r, dst1_l;
    v8i16 offset_vec, const_128, denom_vec;
    v4i32 dst2_r, dst2_l, dst3_r, dst3_l;
    v4i32 weight_vec, rnd_vec;

    src -= (src_stride + 1);

    filter_vec = LD_SH(filter_x);
    SPLATI_H2_SH(filter_vec, 0, 1, filt0, filt1);

    filter_vec = LD_SH(filter_y);
    UNPCK_R_SB_SH(filter_vec, filter_vec);

    SPLATI_W2_SH(filter_vec, 0, filt_h0, filt_h1);

    mask1 = mask0 + 2;

    weight_vec = __msa_fill_w(weight);
    rnd_vec = __msa_fill_w(rnd_val);

    offset_vec = __msa_fill_h(offset);
    denom_vec = __msa_fill_h(rnd_val - 6);
    const_128 = __msa_fill_h((128 * weight));
    offset_vec += __msa_srar_h(const_128, denom_vec);

    for (cnt = width8mult; cnt--;) {
        src_tmp = src;
        dst_tmp = dst;

        LD_SB3(src_tmp, src_stride, src0, src1, src2);
        src_tmp += (3 * src_stride);
        XORI_B3_128_SB(src0, src1, src2);

        VSHF_B2_SB(src0, src0, src0, src0, mask0, mask1, vec0, vec1);
        VSHF_B2_SB(src1, src1, src1, src1, mask0, mask1, vec2, vec3);
        VSHF_B2_SB(src2, src2, src2, src2, mask0, mask1, vec4, vec5);
        dst0 = HEVC_FILT_4TAP_SH(vec0, vec1, filt0, filt1);
        dst1 = HEVC_FILT_4TAP_SH(vec2, vec3, filt0, filt1);
        dst2 = HEVC_FILT_4TAP_SH(vec4, vec5, filt0, filt1);

        ILVRL_H2_SH(dst1, dst0, dst10_r, dst10_l);
        ILVRL_H2_SH(dst2, dst1, dst21_r, dst21_l);

        for (loop_cnt = height >> 2; loop_cnt--;) {
            LD_SB4(src_tmp, src_stride, src3, src4, src5, src6);
            src_tmp += (4 * src_stride);
            XORI_B4_128_SB(src3, src4, src5, src6);

            VSHF_B2_SB(src3, src3, src3, src3, mask0, mask1, vec0, vec1);
            VSHF_B2_SB(src4, src4, src4, src4, mask0, mask1, vec2, vec3);
            VSHF_B2_SB(src5, src5, src5, src5, mask0, mask1, vec4, vec5);
            VSHF_B2_SB(src6, src6, src6, src6, mask0, mask1, vec6, vec7);
            dst3 = HEVC_FILT_4TAP_SH(vec0, vec1, filt0, filt1);
            dst4 = HEVC_FILT_4TAP_SH(vec2, vec3, filt0, filt1);
            dst5 = HEVC_FILT_4TAP_SH(vec4, vec5, filt0, filt1);
            dst6 = HEVC_FILT_4TAP_SH(vec6, vec7, filt0, filt1);
            ILVRL_H2_SH(dst3, dst2, dst32_r, dst32_l);
            ILVRL_H2_SH(dst4, dst3, dst43_r, dst43_l);
            ILVRL_H2_SH(dst5, dst4, dst54_r, dst54_l);
            ILVRL_H2_SH(dst6, dst5, dst65_r, dst65_l);
            dst0_r = HEVC_FILT_4TAP(dst10_r, dst32_r, filt_h0, filt_h1);
            dst0_l = HEVC_FILT_4TAP(dst10_l, dst32_l, filt_h0, filt_h1);
            dst1_r = HEVC_FILT_4TAP(dst21_r, dst43_r, filt_h0, filt_h1);
            dst1_l = HEVC_FILT_4TAP(dst21_l, dst43_l, filt_h0, filt_h1);
            dst2_r = HEVC_FILT_4TAP(dst32_r, dst54_r, filt_h0, filt_h1);
            dst2_l = HEVC_FILT_4TAP(dst32_l, dst54_l, filt_h0, filt_h1);
            dst3_r = HEVC_FILT_4TAP(dst43_r, dst65_r, filt_h0, filt_h1);
            dst3_l = HEVC_FILT_4TAP(dst43_l, dst65_l, filt_h0, filt_h1);
            SRA_4V(dst0_r, dst0_l, dst1_r, dst1_l, 6);
            SRA_4V(dst2_r, dst2_l, dst3_r, dst3_l, 6);
            MUL2(dst0_r, weight_vec, dst1_r, weight_vec, dst0_r, dst1_r);
            MUL2(dst2_r, weight_vec, dst3_r, weight_vec, dst2_r, dst3_r);
            MUL2(dst0_l, weight_vec, dst1_l, weight_vec, dst0_l, dst1_l);
            MUL2(dst2_l, weight_vec, dst3_l, weight_vec, dst2_l, dst3_l);
            SRAR_W4_SW(dst0_r, dst0_l, dst1_r, dst1_l, rnd_vec);
            SRAR_W4_SW(dst2_r, dst2_l, dst3_r, dst3_l, rnd_vec);
            PCKEV_H4_SH(dst0_l, dst0_r, dst1_l, dst1_r, dst2_l, dst2_r, dst3_l,
                        dst3_r, tmp0, tmp1, tmp2, tmp3);
            ADD2(tmp0, offset_vec, tmp1, offset_vec, tmp0, tmp1);
            ADD2(tmp2, offset_vec, tmp3, offset_vec, tmp2, tmp3);
            CLIP_SH4_0_255(tmp0, tmp1, tmp2, tmp3);
            PCKEV_B2_UB(tmp1, tmp0, tmp3, tmp2, out0, out1);
            ST_D4(out0, out1, 0, 1, 0, 1, dst_tmp, dst_stride);
            dst_tmp += (4 * dst_stride);

            dst10_r = dst54_r;
            dst10_l = dst54_l;
            dst21_r = dst65_r;
            dst21_l = dst65_l;
            dst2 = dst6;
        }

        src += 8;
        dst += 8;
    }
}
