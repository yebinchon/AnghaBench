
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ v8i16 ;
typedef int v16u8 ;
typedef scalar_t__ v16i8 ;
typedef int uint8_t ;
typedef int uint32_t ;
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

__attribute__((used)) static void avc_luma_hv_qrt_16x16_msa(const uint8_t *src_x,
                                      const uint8_t *src_y, uint8_t *dst,
                                      int32_t stride)
{
    const int16_t filt_const0 = 0xfb01;
    const int16_t filt_const1 = 0x1414;
    const int16_t filt_const2 = 0x1fb;
    const uint8_t *src_x_tmp = src_x;
    const uint8_t *src_y_tmp = src_y;
    uint8_t *dst_tmp = dst;
    uint32_t multiple8_cnt, loop_cnt;
    v16u8 tmp0, tmp1;
    v16i8 src_hz0, src_hz1, src_hz2, src_hz3, mask0, mask1, mask2;
    v16i8 src_vt0, src_vt1, src_vt2, src_vt3, src_vt4, src_vt5, src_vt6;
    v16i8 src_vt7, src_vt8;
    v16i8 src_vt10_r, src_vt21_r, src_vt32_r, src_vt43_r, src_vt54_r;
    v16i8 src_vt65_r, src_vt76_r, src_vt87_r, filt0, filt1, filt2;
    v8i16 hz_out0, hz_out1, hz_out2, hz_out3, vt_out0, vt_out1, vt_out2;
    v8i16 vt_out3, out0, out1, out2, out3;

    filt0 = (v16i8) __msa_fill_h(filt_const0);
    filt1 = (v16i8) __msa_fill_h(filt_const1);
    filt2 = (v16i8) __msa_fill_h(filt_const2);

    LD_SB3(&luma_mask_arr[0], 16, mask0, mask1, mask2);

    for (multiple8_cnt = 2; multiple8_cnt--;) {
        src_x = src_x_tmp;
        src_y = src_y_tmp;
        dst = dst_tmp;

        LD_SB5(src_y, stride, src_vt0, src_vt1, src_vt2, src_vt3, src_vt4);
        src_y += (5 * stride);

        XORI_B5_128_SB(src_vt0, src_vt1, src_vt2, src_vt3, src_vt4);

        for (loop_cnt = 4; loop_cnt--;) {
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
            ILVR_B4_SB(src_vt1, src_vt0, src_vt2, src_vt1, src_vt3, src_vt2,
                       src_vt4, src_vt3, src_vt10_r, src_vt21_r, src_vt32_r,
                       src_vt43_r);
            ILVR_B4_SB(src_vt5, src_vt4, src_vt6, src_vt5, src_vt7, src_vt6,
                       src_vt8, src_vt7, src_vt54_r, src_vt65_r, src_vt76_r,
                       src_vt87_r);
            vt_out0 = AVC_DOT_SH3_SH(src_vt10_r, src_vt32_r, src_vt54_r, filt0,
                                     filt1, filt2);
            vt_out1 = AVC_DOT_SH3_SH(src_vt21_r, src_vt43_r, src_vt65_r, filt0,
                                     filt1, filt2);
            vt_out2 = AVC_DOT_SH3_SH(src_vt32_r, src_vt54_r, src_vt76_r, filt0,
                                     filt1, filt2);
            vt_out3 = AVC_DOT_SH3_SH(src_vt43_r, src_vt65_r, src_vt87_r, filt0,
                                     filt1, filt2);
            SRARI_H4_SH(vt_out0, vt_out1, vt_out2, vt_out3, 5);
            SAT_SH4_SH(vt_out0, vt_out1, vt_out2, vt_out3, 7);

            out0 = __msa_srari_h((hz_out0 + vt_out0), 1);
            out1 = __msa_srari_h((hz_out1 + vt_out1), 1);
            out2 = __msa_srari_h((hz_out2 + vt_out2), 1);
            out3 = __msa_srari_h((hz_out3 + vt_out3), 1);

            SAT_SH4_SH(out0, out1, out2, out3, 7);
            tmp0 = PCKEV_XORI128_UB(out0, out1);
            tmp1 = PCKEV_XORI128_UB(out2, out3);
            ST_D4(tmp0, tmp1, 0, 1, 0, 1, dst, stride);
            dst += (4 * stride);

            src_vt0 = src_vt4;
            src_vt1 = src_vt5;
            src_vt2 = src_vt6;
            src_vt3 = src_vt7;
            src_vt4 = src_vt8;
        }

        src_x_tmp += 8;
        src_y_tmp += 8;
        dst_tmp += 8;
    }
}
