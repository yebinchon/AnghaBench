
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ v8i16 ;
typedef int v16u8 ;
typedef scalar_t__ v16i8 ;
typedef int uint8_t ;
typedef int int32_t ;
typedef int int16_t ;


 scalar_t__ AVC_DOT_SH3_SH (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ AVC_HORZ_FILTER_SH (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int ILVR_B4_SB (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int LD_SB3 (int *,int,scalar_t__,scalar_t__,scalar_t__) ;
 int LD_SB4 (int const*,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int LD_SB5 (int const*,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int PCKEV_XORI128_UB (scalar_t__,scalar_t__) ;
 int SAT_SH4_SH (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ;
 int SRARI_H4_SH (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ;
 int ST_D4 (int ,int ,int ,int,int ,int,int *,int) ;
 int XORI_B4_128_SB (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int XORI_B5_128_SB (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ __msa_fill_h (int const) ;
 scalar_t__ __msa_srari_h (scalar_t__,int) ;
 int * luma_mask_arr ;

__attribute__((used)) static void avc_luma_hv_qrt_8x8_msa(const uint8_t *src_x, const uint8_t *src_y,
                                    uint8_t *dst, int32_t stride)
{
    const int16_t filt_const0 = 0xfb01;
    const int16_t filt_const1 = 0x1414;
    const int16_t filt_const2 = 0x1fb;
    v16u8 out0, out1;
    v16i8 src_hz0, src_hz1, src_hz2, src_hz3, mask0, mask1, mask2;
    v16i8 src_vt0, src_vt1, src_vt2, src_vt3, src_vt4, src_vt5, src_vt6;
    v16i8 src_vt7, src_vt8, src_vt9, src_vt10, src_vt11, src_vt12;
    v16i8 src_vt10_r, src_vt21_r, src_vt32_r, src_vt43_r, src_vt54_r;
    v16i8 src_vt65_r, src_vt76_r, src_vt87_r, src_vt98_r, src_vt109_r;
    v16i8 src_vt1110_r, src_vt1211_r, filt0, filt1, filt2;
    v8i16 hz_out0, hz_out1, hz_out2, hz_out3, vt_out0, vt_out1, vt_out2;
    v8i16 vt_out3, tmp0, tmp1, tmp2, tmp3;

    filt0 = (v16i8) __msa_fill_h(filt_const0);
    filt1 = (v16i8) __msa_fill_h(filt_const1);
    filt2 = (v16i8) __msa_fill_h(filt_const2);

    LD_SB3(&luma_mask_arr[0], 16, mask0, mask1, mask2);
    LD_SB5(src_y, stride, src_vt0, src_vt1, src_vt2, src_vt3, src_vt4);
    src_y += (5 * stride);

    XORI_B5_128_SB(src_vt0, src_vt1, src_vt2, src_vt3, src_vt4);

    LD_SB4(src_x, stride, src_hz0, src_hz1, src_hz2, src_hz3);
    XORI_B4_128_SB(src_hz0, src_hz1, src_hz2, src_hz3);
    src_x += (4 * stride);

    hz_out0 = AVC_HORZ_FILTER_SH(src_hz0, src_hz0, mask0, mask1, mask2);
    hz_out1 = AVC_HORZ_FILTER_SH(src_hz1, src_hz1, mask0, mask1, mask2);
    hz_out2 = AVC_HORZ_FILTER_SH(src_hz2, src_hz2, mask0, mask1, mask2);
    hz_out3 = AVC_HORZ_FILTER_SH(src_hz3, src_hz3, mask0, mask1, mask2);

    SRARI_H4_SH(hz_out0, hz_out1, hz_out2, hz_out3, 5);
    SAT_SH4_SH(hz_out0, hz_out1, hz_out2, hz_out3, 7);

    LD_SB4(src_y, stride, src_vt5, src_vt6, src_vt7, src_vt8);
    src_y += (4 * stride);
    XORI_B4_128_SB(src_vt5, src_vt6, src_vt7, src_vt8);

    ILVR_B4_SB(src_vt1, src_vt0, src_vt2, src_vt1, src_vt3, src_vt2, src_vt4,
               src_vt3, src_vt10_r, src_vt21_r, src_vt32_r, src_vt43_r);
    ILVR_B4_SB(src_vt5, src_vt4, src_vt6, src_vt5, src_vt7, src_vt6, src_vt8,
               src_vt7, src_vt54_r, src_vt65_r, src_vt76_r, src_vt87_r);
    vt_out0 = AVC_DOT_SH3_SH(src_vt10_r, src_vt32_r, src_vt54_r, filt0, filt1,
                             filt2);
    vt_out1 = AVC_DOT_SH3_SH(src_vt21_r, src_vt43_r, src_vt65_r, filt0, filt1,
                             filt2);
    vt_out2 = AVC_DOT_SH3_SH(src_vt32_r, src_vt54_r, src_vt76_r, filt0, filt1,
                             filt2);
    vt_out3 = AVC_DOT_SH3_SH(src_vt43_r, src_vt65_r, src_vt87_r, filt0, filt1,
                             filt2);
    SRARI_H4_SH(vt_out0, vt_out1, vt_out2, vt_out3, 5);
    SAT_SH4_SH(vt_out0, vt_out1, vt_out2, vt_out3, 7);

    tmp0 = __msa_srari_h((hz_out0 + vt_out0), 1);
    tmp1 = __msa_srari_h((hz_out1 + vt_out1), 1);
    tmp2 = __msa_srari_h((hz_out2 + vt_out2), 1);
    tmp3 = __msa_srari_h((hz_out3 + vt_out3), 1);

    LD_SB4(src_x, stride, src_hz0, src_hz1, src_hz2, src_hz3);
    XORI_B4_128_SB(src_hz0, src_hz1, src_hz2, src_hz3);

    SAT_SH4_SH(tmp0, tmp1, tmp2, tmp3, 7);
    out0 = PCKEV_XORI128_UB(tmp0, tmp1);
    out1 = PCKEV_XORI128_UB(tmp2, tmp3);
    ST_D4(out0, out1, 0, 1, 0, 1, dst, stride);
    dst += (4 * stride);

    LD_SB4(src_y, stride, src_vt9, src_vt10, src_vt11, src_vt12);
    XORI_B4_128_SB(src_vt9, src_vt10, src_vt11, src_vt12);

    hz_out0 = AVC_HORZ_FILTER_SH(src_hz0, src_hz0, mask0, mask1, mask2);
    hz_out1 = AVC_HORZ_FILTER_SH(src_hz1, src_hz1, mask0, mask1, mask2);
    hz_out2 = AVC_HORZ_FILTER_SH(src_hz2, src_hz2, mask0, mask1, mask2);
    hz_out3 = AVC_HORZ_FILTER_SH(src_hz3, src_hz3, mask0, mask1, mask2);

    SRARI_H4_SH(hz_out0, hz_out1, hz_out2, hz_out3, 5);
    SAT_SH4_SH(hz_out0, hz_out1, hz_out2, hz_out3, 7);

    ILVR_B4_SB(src_vt9, src_vt8, src_vt10, src_vt9, src_vt11, src_vt10,
               src_vt12, src_vt11, src_vt98_r, src_vt109_r, src_vt1110_r,
               src_vt1211_r);
    vt_out0 = AVC_DOT_SH3_SH(src_vt54_r, src_vt76_r, src_vt98_r, filt0, filt1,
                             filt2);
    vt_out1 = AVC_DOT_SH3_SH(src_vt65_r, src_vt87_r, src_vt109_r, filt0, filt1,
                             filt2);
    vt_out2 = AVC_DOT_SH3_SH(src_vt76_r, src_vt98_r, src_vt1110_r, filt0, filt1,
                             filt2);
    vt_out3 = AVC_DOT_SH3_SH(src_vt87_r, src_vt109_r, src_vt1211_r, filt0,
                             filt1, filt2);
    SRARI_H4_SH(vt_out0, vt_out1, vt_out2, vt_out3, 5);
    SAT_SH4_SH(vt_out0, vt_out1, vt_out2, vt_out3, 7);

    tmp0 = __msa_srari_h((hz_out0 + vt_out0), 1);
    tmp1 = __msa_srari_h((hz_out1 + vt_out1), 1);
    tmp2 = __msa_srari_h((hz_out2 + vt_out2), 1);
    tmp3 = __msa_srari_h((hz_out3 + vt_out3), 1);

    SAT_SH4_SH(tmp0, tmp1, tmp2, tmp3, 7);
    out0 = PCKEV_XORI128_UB(tmp0, tmp1);
    out1 = PCKEV_XORI128_UB(tmp2, tmp3);
    ST_D4(out0, out1, 0, 1, 0, 1, dst, stride);
}
