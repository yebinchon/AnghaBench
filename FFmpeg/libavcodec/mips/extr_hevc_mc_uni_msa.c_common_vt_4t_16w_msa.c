
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v8i16 ;
typedef int v16u8 ;
typedef int v16i8 ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef int int8_t ;
typedef int int32_t ;


 int HEVC_FILT_4TAP_SH (int ,int ,int ,int ) ;
 int ILVL_B2_SB (int ,int ,int ,int ,int ,int ) ;
 int ILVL_B4_SB (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int ILVR_B2_SB (int ,int ,int ,int ,int ,int ) ;
 int ILVR_B4_SB (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int LD_SB3 (int *,int,int ,int ,int ) ;
 int LD_SB4 (int *,int,int ,int ,int ,int ) ;
 int LD_SH (int const*) ;
 int PCKEV_B4_UB (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int SAT_SH4_SH (int ,int ,int ,int ,int) ;
 int SPLATI_H2_SB (int ,int ,int,int ,int ) ;
 int SRARI_H4_SH (int ,int ,int ,int ,int) ;
 int ST_UB4 (int ,int ,int ,int ,int *,int) ;
 int XORI_B3_128_SB (int ,int ,int ) ;
 int XORI_B4_128_SB (int ,int ,int ,int ) ;
 int XORI_B4_128_UB (int ,int ,int ,int ) ;

__attribute__((used)) static void common_vt_4t_16w_msa(uint8_t *src, int32_t src_stride,
                                 uint8_t *dst, int32_t dst_stride,
                                 const int8_t *filter, int32_t height)
{
    uint32_t loop_cnt;
    v16i8 src0, src1, src2, src3, src4, src5, src6;
    v16i8 src10_r, src32_r, src54_r, src21_r, src43_r, src65_r, src10_l;
    v16i8 src32_l, src54_l, src21_l, src43_l, src65_l, filt0, filt1;
    v16u8 tmp0, tmp1, tmp2, tmp3;
    v8i16 filt, out0_r, out1_r, out2_r, out3_r, out0_l, out1_l, out2_l, out3_l;

    src -= src_stride;

    filt = LD_SH(filter);
    SPLATI_H2_SB(filt, 0, 1, filt0, filt1);

    LD_SB3(src, src_stride, src0, src1, src2);
    src += (3 * src_stride);

    XORI_B3_128_SB(src0, src1, src2);
    ILVR_B2_SB(src1, src0, src2, src1, src10_r, src21_r);
    ILVL_B2_SB(src1, src0, src2, src1, src10_l, src21_l);

    for (loop_cnt = (height >> 2); loop_cnt--;) {
        LD_SB4(src, src_stride, src3, src4, src5, src6);
        src += (4 * src_stride);

        XORI_B4_128_SB(src3, src4, src5, src6);
        ILVR_B4_SB(src3, src2, src4, src3, src5, src4, src6, src5,
                   src32_r, src43_r, src54_r, src65_r);
        ILVL_B4_SB(src3, src2, src4, src3, src5, src4, src6, src5,
                   src32_l, src43_l, src54_l, src65_l);
        out0_r = HEVC_FILT_4TAP_SH(src10_r, src32_r, filt0, filt1);
        out1_r = HEVC_FILT_4TAP_SH(src21_r, src43_r, filt0, filt1);
        out2_r = HEVC_FILT_4TAP_SH(src32_r, src54_r, filt0, filt1);
        out3_r = HEVC_FILT_4TAP_SH(src43_r, src65_r, filt0, filt1);
        out0_l = HEVC_FILT_4TAP_SH(src10_l, src32_l, filt0, filt1);
        out1_l = HEVC_FILT_4TAP_SH(src21_l, src43_l, filt0, filt1);
        out2_l = HEVC_FILT_4TAP_SH(src32_l, src54_l, filt0, filt1);
        out3_l = HEVC_FILT_4TAP_SH(src43_l, src65_l, filt0, filt1);
        SRARI_H4_SH(out0_r, out1_r, out2_r, out3_r, 6);
        SRARI_H4_SH(out0_l, out1_l, out2_l, out3_l, 6);
        SAT_SH4_SH(out0_r, out1_r, out2_r, out3_r, 7);
        SAT_SH4_SH(out0_l, out1_l, out2_l, out3_l, 7);
        PCKEV_B4_UB(out0_l, out0_r, out1_l, out1_r, out2_l, out2_r, out3_l,
                    out3_r, tmp0, tmp1, tmp2, tmp3);
        XORI_B4_128_UB(tmp0, tmp1, tmp2, tmp3);
        ST_UB4(tmp0, tmp1, tmp2, tmp3, dst, dst_stride);
        dst += (4 * dst_stride);

        src10_r = src54_r;
        src21_r = src65_r;
        src10_l = src54_l;
        src21_l = src65_l;
        src2 = src6;
    }
}
