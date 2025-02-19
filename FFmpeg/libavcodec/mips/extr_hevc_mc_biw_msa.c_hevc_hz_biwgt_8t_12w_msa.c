
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ v8i16 ;
typedef int v4i32 ;
typedef scalar_t__ v16i8 ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef int int8_t ;
typedef int int32_t ;
typedef int int16_t ;


 int HEVC_BIW_RND_CLIP2 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ,int ,int ,scalar_t__,scalar_t__) ;
 int HEVC_BIW_RND_CLIP4 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ,int ,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ HEVC_FILT_8TAP_SH (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int ILVR_D2_SH (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ LD_SB (int *) ;
 int LD_SB4 (int *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ LD_SH (int const*) ;
 int LD_SH4 (int *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int PCKEV_B2_SH (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int SPLATI_H4_SH (scalar_t__,int ,int,int,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int ST_D4 (scalar_t__,scalar_t__,int ,int,int ,int,int *,int) ;
 int ST_W4 (scalar_t__,int ,int,int,int,int *,int) ;
 int VSHF_B4_SB (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int XORI_B4_128_SB (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int __msa_fill_w (int) ;
 scalar_t__ __msa_pckev_b (scalar_t__,scalar_t__) ;
 int * ff_hevc_mask_arr ;

__attribute__((used)) static void hevc_hz_biwgt_8t_12w_msa(uint8_t *src0_ptr,
                                     int32_t src_stride,
                                     int16_t *src1_ptr,
                                     int32_t src2_stride,
                                     uint8_t *dst,
                                     int32_t dst_stride,
                                     const int8_t *filter,
                                     int32_t height,
                                     int32_t weight0,
                                     int32_t weight1,
                                     int32_t offset0,
                                     int32_t offset1,
                                     int32_t rnd_val)
{
    uint32_t loop_cnt;
    int32_t offset, weight, constant;
    v16i8 src0, src1, src2, src3, vec0, vec1, vec2, vec3;
    v16i8 mask0, mask1, mask2, mask3, mask4, mask5, mask6, mask7;
    v8i16 filt0, filt1, filt2, filt3, out0, out1, out2, out3;
    v8i16 dst0, dst1, dst2, dst3, in0, in1, in2, in3, filter_vec;
    v4i32 weight_vec, offset_vec, rnd_vec;

    src0_ptr -= 3;

    weight0 = weight0 & 0x0000FFFF;
    weight = weight0 | (weight1 << 16);
    constant = 128 * weight1;
    constant <<= 6;
    offset = (offset0 + offset1) << rnd_val;
    offset += constant;

    offset_vec = __msa_fill_w(offset);
    weight_vec = __msa_fill_w(weight);
    rnd_vec = __msa_fill_w(rnd_val + 1);

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

    for (loop_cnt = 4; loop_cnt--;) {
        LD_SB4(src0_ptr, src_stride, src0, src1, src2, src3);
        LD_SH4(src1_ptr, src2_stride, in0, in1, in2, in3);
        XORI_B4_128_SB(src0, src1, src2, src3);
        VSHF_B4_SB(src0, src0, mask0, mask1, mask2, mask3, vec0, vec1, vec2,
                   vec3);
        dst0 = HEVC_FILT_8TAP_SH(vec0, vec1, vec2, vec3, filt0, filt1, filt2,
                                 filt3);
        VSHF_B4_SB(src1, src1, mask0, mask1, mask2, mask3, vec0, vec1, vec2,
                   vec3);
        dst1 = HEVC_FILT_8TAP_SH(vec0, vec1, vec2, vec3, filt0, filt1, filt2,
                                 filt3);
        VSHF_B4_SB(src2, src2, mask0, mask1, mask2, mask3, vec0, vec1, vec2,
                   vec3);
        dst2 = HEVC_FILT_8TAP_SH(vec0, vec1, vec2, vec3, filt0, filt1, filt2,
                                 filt3);
        VSHF_B4_SB(src3, src3, mask0, mask1, mask2, mask3, vec0, vec1, vec2,
                   vec3);
        dst3 = HEVC_FILT_8TAP_SH(vec0, vec1, vec2, vec3, filt0, filt1, filt2,
                                 filt3);
        HEVC_BIW_RND_CLIP4(dst0, dst1, dst2, dst3, in0, in1, in2, in3,
                           weight_vec, rnd_vec, offset_vec, out0, out1, out2,
                           out3);
        PCKEV_B2_SH(out1, out0, out3, out2, out0, out1);
        ST_D4(out0, out1, 0, 1, 0, 1, dst, dst_stride);

        LD_SB4(src0_ptr + 8, src_stride, src0, src1, src2, src3);
        src0_ptr += (4 * src_stride);
        LD_SH4(src1_ptr + 8, src2_stride, in0, in1, in2, in3);
        src1_ptr += (4 * src2_stride);
        ILVR_D2_SH(in1, in0, in3, in2, in0, in1);
        XORI_B4_128_SB(src0, src1, src2, src3);
        VSHF_B4_SB(src0, src1, mask4, mask5, mask6, mask7, vec0, vec1, vec2,
                   vec3);
        dst0 = HEVC_FILT_8TAP_SH(vec0, vec1, vec2, vec3, filt0, filt1, filt2,
                                 filt3);
        VSHF_B4_SB(src2, src3, mask4, mask5, mask6, mask7, vec0, vec1, vec2,
                   vec3);
        dst1 = HEVC_FILT_8TAP_SH(vec0, vec1, vec2, vec3, filt0, filt1, filt2,
                                 filt3);
        HEVC_BIW_RND_CLIP2(dst0, dst1, in0, in1, weight_vec, rnd_vec,
                           offset_vec, out0, out1);
        out0 = (v8i16) __msa_pckev_b((v16i8) out1, (v16i8) out0);
        ST_W4(out0, 0, 1, 2, 3, dst + 8, dst_stride);
        dst += (4 * dst_stride);
    }
}
