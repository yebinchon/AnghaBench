
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v8i16 ;
typedef int v4i32 ;
typedef scalar_t__ v16u8 ;
typedef scalar_t__ v16i8 ;
typedef int uint8_t ;
typedef int uint64_t ;
typedef int int8_t ;
typedef scalar_t__ int32_t ;
typedef int int16_t ;


 int CLIP_SH_0_255 (int) ;
 int HEVC_FILT_4TAP (int,int,int,int) ;
 int HEVC_FILT_4TAP_SH (scalar_t__,scalar_t__,int,int) ;
 int ILVRL_H2_SH (int,int,int,int) ;
 int INSERT_D2_SH (int ,int ,int) ;
 int LD2 (int *,scalar_t__,int ,int ) ;
 scalar_t__ LD_SB (scalar_t__) ;
 int LD_SB5 (int *,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int LD_SH (int const*) ;
 int SPLATI_H2_SH (int,int ,int,int,int) ;
 int SPLATI_W2_SH (int,int ,int,int) ;
 int ST_W2 (scalar_t__,int ,int,int *,scalar_t__) ;
 int UNPCK_R_SB_SH (int,int) ;
 int VSHF_B2_SB (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int XORI_B5_128_SB (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int __msa_adds_s_h (int,int) ;
 int __msa_ldi_h (int) ;
 scalar_t__ __msa_pckev_b (scalar_t__,scalar_t__) ;
 int __msa_pckev_h (int,int) ;
 int __msa_srari_h (int,int) ;
 scalar_t__ ff_hevc_mask_arr ;

__attribute__((used)) static void hevc_hv_bi_4t_4x2_msa(uint8_t *src0_ptr,
                                  int32_t src_stride,
                                  int16_t *src1_ptr,
                                  int32_t src2_stride,
                                  uint8_t *dst,
                                  int32_t dst_stride,
                                  const int8_t *filter_x,
                                  const int8_t *filter_y)
{
    uint64_t tp0, tp1;
    v16u8 out;
    v8i16 in0 = { 0 };
    v16i8 src0, src1, src2, src3, src4;
    v8i16 filt0, filt1;
    v8i16 filt_h0, filt_h1;
    v16i8 mask0 = LD_SB(ff_hevc_mask_arr + 16);
    v16i8 mask1;
    v8i16 filter_vec, const_vec;
    v16i8 vec0, vec1, vec2, vec3, vec4, vec5;
    v8i16 dst20, dst31, dst42, dst10, dst32, dst21, dst43, tmp;
    v4i32 dst0, dst1;

    src0_ptr -= (src_stride + 1);

    filter_vec = LD_SH(filter_x);
    SPLATI_H2_SH(filter_vec, 0, 1, filt0, filt1);

    filter_vec = LD_SH(filter_y);
    UNPCK_R_SB_SH(filter_vec, filter_vec);

    SPLATI_W2_SH(filter_vec, 0, filt_h0, filt_h1);

    mask1 = mask0 + 2;

    const_vec = __msa_ldi_h(128);
    const_vec <<= 6;

    LD_SB5(src0_ptr, src_stride, src0, src1, src2, src3, src4);
    XORI_B5_128_SB(src0, src1, src2, src3, src4);

    LD2(src1_ptr, src2_stride, tp0, tp1);
    INSERT_D2_SH(tp0, tp1, in0);
    in0 = __msa_adds_s_h(in0, const_vec);

    VSHF_B2_SB(src0, src2, src0, src2, mask0, mask1, vec0, vec1);
    VSHF_B2_SB(src1, src3, src1, src3, mask0, mask1, vec2, vec3);
    VSHF_B2_SB(src2, src4, src2, src4, mask0, mask1, vec4, vec5);

    dst20 = HEVC_FILT_4TAP_SH(vec0, vec1, filt0, filt1);
    dst31 = HEVC_FILT_4TAP_SH(vec2, vec3, filt0, filt1);
    dst42 = HEVC_FILT_4TAP_SH(vec4, vec5, filt0, filt1);

    ILVRL_H2_SH(dst31, dst20, dst10, dst32);
    ILVRL_H2_SH(dst42, dst31, dst21, dst43);

    dst0 = HEVC_FILT_4TAP(dst10, dst32, filt_h0, filt_h1);
    dst1 = HEVC_FILT_4TAP(dst21, dst43, filt_h0, filt_h1);
    dst0 >>= 6;
    dst1 >>= 6;
    tmp = __msa_pckev_h((v8i16) dst1, (v8i16) dst0);
    tmp = __msa_adds_s_h(tmp, in0);
    tmp = __msa_srari_h(tmp, 7);
    CLIP_SH_0_255(tmp);
    out = (v16u8) __msa_pckev_b((v16i8) tmp, (v16i8) tmp);
    ST_W2(out, 0, 1, dst, dst_stride);
}
