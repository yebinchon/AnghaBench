
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


 int HEVC_FILT_8TAP_SH (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ,int ,int ,int ) ;
 int HEVC_UNIW_RND_CLIP2_MAX_SATU_H (int ,int ,int ,int ,int ,int ,int ) ;
 int HEVC_UNIW_RND_CLIP4_MAX_SATU_H (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ LD_SB (int *) ;
 int LD_SB4 (int *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int LD_SH (int const*) ;
 int PCKEV_B3_UB (int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int SPLATI_H4_SH (int ,int ,int,int,int,int ,int ,int ,int ) ;
 int ST_D4 (int ,int ,int ,int,int ,int,int *,int) ;
 int ST_W4 (int ,int ,int,int,int,int *,int) ;
 int VSHF_B4_SB (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int XORI_B8_128_SB (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int __msa_adds_s_h (int ,int ) ;
 int __msa_fill_h (int) ;
 int __msa_fill_w (int) ;
 int __msa_srar_h (int ,int ) ;
 int * ff_hevc_mask_arr ;

__attribute__((used)) static void hevc_hz_uniwgt_8t_12w_msa(uint8_t *src,
                                      int32_t src_stride,
                                      uint8_t *dst,
                                      int32_t dst_stride,
                                      const int8_t *filter,
                                      int32_t height,
                                      int32_t weight,
                                      int32_t offset,
                                      int32_t rnd_val)
{
    uint32_t loop_cnt;
    v16u8 out0, out1, out2;
    v8i16 filt0, filt1, filt2, filt3;
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7;
    v16i8 mask0, mask1, mask2, mask3, mask4, mask5, mask6, mask7;
    v16i8 vec0, vec1, vec2, vec3, vec4, vec5, vec6, vec7;
    v16i8 vec8, vec9, vec10, vec11, vec12, vec13, vec14, vec15;
    v8i16 filter_vec;
    v8i16 dst01, dst23, dst0, dst1, dst2, dst3, dst4, dst5;
    v8i16 weight_vec_h, offset_vec, denom_vec;
    v4i32 weight_vec, rnd_vec;

    src -= 3;
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
    SPLATI_H4_SH(filter_vec, 0, 1, 2, 3, filt0, filt1, filt2, filt3);

    mask0 = LD_SB(&ff_hevc_mask_arr[0]);
    mask1 = mask0 + 2;
    mask2 = mask0 + 4;
    mask3 = mask0 + 6;
    mask4 = LD_SB(&ff_hevc_mask_arr[16]);
    mask5 = mask4 + 2;
    mask6 = mask4 + 4;
    mask7 = mask4 + 6;

    for (loop_cnt = (height >> 2); loop_cnt--;) {
        LD_SB4(src, src_stride, src0, src1, src2, src3);
        LD_SB4(src + 8, src_stride, src4, src5, src6, src7);
        src += (4 * src_stride);
        XORI_B8_128_SB(src0, src1, src2, src3, src4, src5, src6, src7);

        VSHF_B4_SB(src0, src0, mask0, mask1, mask2, mask3,
                   vec0, vec1, vec2, vec3);
        VSHF_B4_SB(src1, src1, mask0, mask1, mask2, mask3,
                   vec4, vec5, vec6, vec7);
        VSHF_B4_SB(src2, src2, mask0, mask1, mask2, mask3,
                   vec8, vec9, vec10, vec11);
        VSHF_B4_SB(src3, src3, mask0, mask1, mask2, mask3,
                   vec12, vec13, vec14, vec15);
        dst0 = HEVC_FILT_8TAP_SH(vec0, vec1, vec2, vec3, filt0, filt1, filt2,
                                 filt3);
        dst1 = HEVC_FILT_8TAP_SH(vec4, vec5, vec6, vec7, filt0, filt1, filt2,
                                 filt3);
        dst2 = HEVC_FILT_8TAP_SH(vec8, vec9, vec10, vec11, filt0, filt1, filt2,
                                 filt3);
        dst3 = HEVC_FILT_8TAP_SH(vec12, vec13, vec14, vec15, filt0, filt1,
                                 filt2, filt3);
        VSHF_B4_SB(src4, src5, mask4, mask5, mask6, mask7,
                   vec0, vec1, vec2, vec3);
        VSHF_B4_SB(src6, src7, mask4, mask5, mask6, mask7,
                   vec4, vec5, vec6, vec7);
        dst01 = HEVC_FILT_8TAP_SH(vec0, vec1, vec2, vec3, filt0, filt1, filt2,
                                  filt3);
        dst23 = HEVC_FILT_8TAP_SH(vec4, vec5, vec6, vec7, filt0, filt1, filt2,
                                  filt3);

        HEVC_UNIW_RND_CLIP4_MAX_SATU_H(dst0, dst1, dst2, dst3, weight_vec,
                                       offset_vec, rnd_vec, dst0, dst1, dst2,
                                       dst3);
        HEVC_UNIW_RND_CLIP2_MAX_SATU_H(dst01, dst23, weight_vec, offset_vec,
                                       rnd_vec, dst4, dst5);

        PCKEV_B3_UB(dst1, dst0, dst3, dst2, dst5, dst4, out0, out1, out2);
        ST_D4(out0, out1, 0, 1, 0, 1, dst, dst_stride);
        ST_W4(out2, 0, 1, 2, 3, dst + 8, dst_stride);
        dst += (4 * dst_stride);
    }
}
