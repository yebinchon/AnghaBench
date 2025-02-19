
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ v8i16 ;
typedef int v4i32 ;
typedef int v16i8 ;
typedef int uint8_t ;
typedef int int8_t ;
typedef int int32_t ;
typedef int int16_t ;


 int HEVC_BIW_RND_CLIP2 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ,int ,int ,scalar_t__,scalar_t__) ;
 scalar_t__ HEVC_FILT_4TAP_SH (int ,int ,scalar_t__,scalar_t__) ;
 int ILVR_B2_SB (int ,int ,int ,int ,int ,int ) ;
 int LD_SB2 (int *,int,int ,int ) ;
 int LD_SB3 (int *,int,int ,int ,int ) ;
 scalar_t__ LD_SH (int const*) ;
 int LD_SH2 (int *,int,scalar_t__,scalar_t__) ;
 int SPLATI_H2_SH (scalar_t__,int ,int,scalar_t__,scalar_t__) ;
 int ST_D2 (scalar_t__,int ,int,int *,int) ;
 int XORI_B2_128_SB (int ,int ) ;
 int XORI_B3_128_SB (int ,int ,int ) ;
 int __msa_fill_w (int) ;
 scalar_t__ __msa_pckev_b (int ,int ) ;

__attribute__((used)) static void hevc_vt_biwgt_4t_8x2_msa(uint8_t *src0_ptr,
                                     int32_t src_stride,
                                     int16_t *src1_ptr,
                                     int32_t src2_stride,
                                     uint8_t *dst,
                                     int32_t dst_stride,
                                     const int8_t *filter,
                                     int32_t weight0,
                                     int32_t weight1,
                                     int32_t offset0,
                                     int32_t offset1,
                                     int32_t rnd_val)
{
    int32_t offset, weight, constant;
    v16i8 src0, src1, src2, src3, src4;
    v8i16 in0, in1, tmp0, tmp1;
    v16i8 src10_r, src32_r, src21_r, src43_r;
    v8i16 filt0, filt1;
    v8i16 filter_vec;
    v4i32 weight_vec, offset_vec, rnd_vec;

    src0_ptr -= src_stride;

    offset = (offset0 + offset1) << rnd_val;
    weight0 = weight0 & 0x0000FFFF;
    weight = weight0 | (weight1 << 16);
    constant = 128 * weight1;
    constant <<= 6;
    offset += constant;

    offset_vec = __msa_fill_w(offset);
    weight_vec = __msa_fill_w(weight);
    rnd_vec = __msa_fill_w(rnd_val + 1);

    filter_vec = LD_SH(filter);
    SPLATI_H2_SH(filter_vec, 0, 1, filt0, filt1);

    LD_SB3(src0_ptr, src_stride, src0, src1, src2);
    src0_ptr += (3 * src_stride);
    XORI_B3_128_SB(src0, src1, src2);
    ILVR_B2_SB(src1, src0, src2, src1, src10_r, src21_r);

    LD_SB2(src0_ptr, src_stride, src3, src4);
    LD_SH2(src1_ptr, src2_stride, in0, in1);
    XORI_B2_128_SB(src3, src4);
    ILVR_B2_SB(src3, src2, src4, src3, src32_r, src43_r);

    tmp0 = HEVC_FILT_4TAP_SH(src10_r, src32_r, filt0, filt1);
    tmp1 = HEVC_FILT_4TAP_SH(src21_r, src43_r, filt0, filt1);
    HEVC_BIW_RND_CLIP2(tmp0, tmp1, in0, in1,
                       weight_vec, rnd_vec, offset_vec,
                       tmp0, tmp1);

    tmp0 = (v8i16) __msa_pckev_b((v16i8) tmp1, (v16i8) tmp0);
    ST_D2(tmp0, 0, 1, dst, dst_stride);
}
