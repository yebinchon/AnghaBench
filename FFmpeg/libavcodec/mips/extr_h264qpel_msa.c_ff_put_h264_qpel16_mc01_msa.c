
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v8i16 ;
typedef scalar_t__ v16u8 ;
typedef scalar_t__ v16i8 ;
typedef int uint8_t ;
typedef int ptrdiff_t ;
typedef int int32_t ;
typedef int int16_t ;


 int AVC_DOT_SH3_SH (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int ILVL_B4_SB (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int ILVR_B4_SB (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int LD_SB4 (int const*,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int LD_SB5 (int const*,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int PCKEV_B4_UB (int ,int ,int ,int ,int ,int ,int ,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int SAT_SH4_SH (int ,int ,int ,int ,int) ;
 int SRARI_H4_SH (int ,int ,int ,int ,int) ;
 int ST_UB4 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int *,int) ;
 int XORI_B4_128_SB (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int XORI_B4_128_UB (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int XORI_B5_128_SB (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ __msa_aver_s_b (scalar_t__,scalar_t__) ;
 scalar_t__ __msa_fill_h (int) ;

void ff_put_h264_qpel16_mc01_msa(uint8_t *dst, const uint8_t *src,
                                 ptrdiff_t stride)
{
    int32_t loop_cnt;
    int16_t filt_const0 = 0xfb01;
    int16_t filt_const1 = 0x1414;
    int16_t filt_const2 = 0x1fb;
    v16u8 res0, res1, res2, res3;
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7, src8;
    v16i8 src10_r, src32_r, src54_r, src76_r, src21_r, src43_r, src65_r;
    v16i8 src87_r, src10_l, src32_l, src54_l, src76_l, src21_l, src43_l;
    v16i8 src65_l, src87_l, filt0, filt1, filt2;
    v8i16 out0_r, out1_r, out2_r, out3_r, out0_l, out1_l, out2_l, out3_l;

    filt0 = (v16i8) __msa_fill_h(filt_const0);
    filt1 = (v16i8) __msa_fill_h(filt_const1);
    filt2 = (v16i8) __msa_fill_h(filt_const2);

    src -= (stride * 2);

    LD_SB5(src, stride, src0, src1, src2, src3, src4);
    src += (5 * stride);

    XORI_B5_128_SB(src0, src1, src2, src3, src4);
    ILVR_B4_SB(src1, src0, src2, src1, src3, src2, src4, src3, src10_r, src21_r,
               src32_r, src43_r);
    ILVL_B4_SB(src1, src0, src2, src1, src3, src2, src4, src3, src10_l, src21_l,
               src32_l, src43_l);

    for (loop_cnt = 4; loop_cnt--;) {
        LD_SB4(src, stride, src5, src6, src7, src8);
        src += (4 * stride);

        XORI_B4_128_SB(src5, src6, src7, src8);
        ILVR_B4_SB(src5, src4, src6, src5, src7, src6, src8, src7, src54_r,
                   src65_r, src76_r, src87_r);
        ILVL_B4_SB(src5, src4, src6, src5, src7, src6, src8, src7, src54_l,
                   src65_l, src76_l, src87_l);
        out0_r = AVC_DOT_SH3_SH(src10_r, src32_r, src54_r, filt0, filt1, filt2);
        out1_r = AVC_DOT_SH3_SH(src21_r, src43_r, src65_r, filt0, filt1, filt2);
        out2_r = AVC_DOT_SH3_SH(src32_r, src54_r, src76_r, filt0, filt1, filt2);
        out3_r = AVC_DOT_SH3_SH(src43_r, src65_r, src87_r, filt0, filt1, filt2);
        out0_l = AVC_DOT_SH3_SH(src10_l, src32_l, src54_l, filt0, filt1, filt2);
        out1_l = AVC_DOT_SH3_SH(src21_l, src43_l, src65_l, filt0, filt1, filt2);
        out2_l = AVC_DOT_SH3_SH(src32_l, src54_l, src76_l, filt0, filt1, filt2);
        out3_l = AVC_DOT_SH3_SH(src43_l, src65_l, src87_l, filt0, filt1, filt2);
        SRARI_H4_SH(out0_r, out1_r, out2_r, out3_r, 5);
        SAT_SH4_SH(out0_r, out1_r, out2_r, out3_r, 7);
        SRARI_H4_SH(out0_l, out1_l, out2_l, out3_l, 5);
        SAT_SH4_SH(out0_l, out1_l, out2_l, out3_l, 7);
        PCKEV_B4_UB(out0_l, out0_r, out1_l, out1_r, out2_l, out2_r, out3_l,
                    out3_r, res0, res1, res2, res3);
        res0 = (v16u8) __msa_aver_s_b((v16i8) res0, src2);
        res1 = (v16u8) __msa_aver_s_b((v16i8) res1, src3);
        res2 = (v16u8) __msa_aver_s_b((v16i8) res2, src4);
        res3 = (v16u8) __msa_aver_s_b((v16i8) res3, src5);
        XORI_B4_128_UB(res0, res1, res2, res3);
        ST_UB4(res0, res1, res2, res3, dst, stride);
        dst += (4 * stride);

        src10_r = src54_r;
        src32_r = src76_r;
        src21_r = src65_r;
        src43_r = src87_r;
        src10_l = src54_l;
        src32_l = src76_l;
        src21_l = src65_l;
        src43_l = src87_l;
        src2 = src6;
        src3 = src7;
        src4 = src8;
    }
}
