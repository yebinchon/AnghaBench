
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ v8i16 ;
typedef scalar_t__ v4i32 ;
typedef int v2i64 ;
typedef scalar_t__ v16i8 ;
typedef int uint8_t ;
typedef int int8_t ;
typedef int int32_t ;
typedef int int16_t ;


 int CLIP_SH_0_255 (scalar_t__) ;
 scalar_t__ HEVC_FILT_4TAP_SH (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int ILVRL_H2_SW (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ LD_SB (int *) ;
 int LD_SB2 (int *,int,scalar_t__,scalar_t__) ;
 scalar_t__ LD_SH (int const*) ;
 int LD_SH2 (int *,int,scalar_t__,scalar_t__) ;
 int SPLATI_H2_SH (scalar_t__,int ,int,scalar_t__,scalar_t__) ;
 int SRAR_W2_SW (scalar_t__,scalar_t__,scalar_t__) ;
 int ST_W2 (scalar_t__,int ,int,int *,int) ;
 int VSHF_B2_SB (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int XORI_B2_128_SB (scalar_t__,scalar_t__) ;
 scalar_t__ __msa_dpadd_s_w (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ __msa_fill_w (int) ;
 scalar_t__ __msa_ilvr_d (int ,int ) ;
 scalar_t__ __msa_pckev_b (scalar_t__,scalar_t__) ;
 scalar_t__ __msa_pckev_h (scalar_t__,scalar_t__) ;
 int * ff_hevc_mask_arr ;

__attribute__((used)) static void hevc_hz_biwgt_4t_4x2_msa(uint8_t *src0_ptr,
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
    v8i16 filt0, filt1;
    v16i8 src0, src1;
    v8i16 in0, in1;
    v16i8 mask0 = LD_SB(&ff_hevc_mask_arr[16]);
    v16i8 mask1, vec0, vec1;
    v8i16 dst0;
    v4i32 dst0_r, dst0_l;
    v8i16 out0, filter_vec;
    v4i32 weight_vec, offset_vec, rnd_vec;

    src0_ptr -= 1;

    filter_vec = LD_SH(filter);
    SPLATI_H2_SH(filter_vec, 0, 1, filt0, filt1);

    mask1 = mask0 + 2;

    offset = (offset0 + offset1) << rnd_val;
    weight0 = weight0 & 0x0000FFFF;
    weight = weight0 | (weight1 << 16);
    constant = 128 * weight1;
    constant <<= 6;
    offset += constant;

    offset_vec = __msa_fill_w(offset);
    weight_vec = __msa_fill_w(weight);
    rnd_vec = __msa_fill_w(rnd_val + 1);

    LD_SB2(src0_ptr, src_stride, src0, src1);
    LD_SH2(src1_ptr, src2_stride, in0, in1);
    in0 = (v8i16) __msa_ilvr_d((v2i64) in1, (v2i64) in0);
    XORI_B2_128_SB(src0, src1);

    VSHF_B2_SB(src0, src1, src0, src1, mask0, mask1, vec0, vec1);
    dst0 = HEVC_FILT_4TAP_SH(vec0, vec1, filt0, filt1);

    ILVRL_H2_SW(dst0, in0, dst0_r, dst0_l);
    dst0_r = __msa_dpadd_s_w(offset_vec, (v8i16) dst0_r, (v8i16) weight_vec);
    dst0_l = __msa_dpadd_s_w(offset_vec, (v8i16) dst0_l, (v8i16) weight_vec);
    SRAR_W2_SW(dst0_r, dst0_l, rnd_vec);
    out0 = __msa_pckev_h((v8i16) dst0_l, (v8i16) dst0_r);
    CLIP_SH_0_255(out0);
    out0 = (v8i16) __msa_pckev_b((v16i8) out0, (v16i8) out0);
    ST_W2(out0, 0, 1, dst, dst_stride);
}
