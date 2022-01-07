
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v8i16 ;
typedef int v16u8 ;
typedef int v16i8 ;
typedef int uint8_t ;
typedef int int8_t ;
typedef int int32_t ;


 int HEVC_FILT_4TAP_SH (int ,int ,int ,int ) ;
 int ILVR_B2_SB (int ,int ,int ,int ,int ,int ) ;
 int LD_SB2 (int *,int,int ,int ) ;
 int LD_SB3 (int *,int,int ,int ,int ) ;
 int LD_SH (int const*) ;
 int PCKEV_XORI128_UB (int ,int ) ;
 int SAT_SH4_SH (int ,int ,int ,int ,int) ;
 int SPLATI_H2_SH (int ,int ,int,int ,int ) ;
 int SRARI_H4_SH (int ,int ,int ,int ,int) ;
 int ST_H2 (int ,int,int,int *,int) ;
 int ST_W2 (int ,int ,int,int *,int) ;
 int XORI_B2_128_SB (int ,int ) ;
 int XORI_B3_128_SB (int ,int ,int ) ;

__attribute__((used)) static void common_vt_4t_6w_msa(uint8_t *src, int32_t src_stride,
                                uint8_t *dst, int32_t dst_stride,
                                const int8_t *filter, int32_t height)
{
    v16u8 out0, out1;
    v16i8 src0, src1, src2, src3, src4, src5, src6;
    v16i8 src10_r, src32_r, src21_r, src43_r, src54_r, src65_r;
    v8i16 dst0_r, dst1_r, dst2_r, dst3_r, filt0, filt1, filter_vec;

    src -= src_stride;

    filter_vec = LD_SH(filter);
    SPLATI_H2_SH(filter_vec, 0, 1, filt0, filt1);

    LD_SB3(src, src_stride, src0, src1, src2);
    src += (3 * src_stride);
    XORI_B3_128_SB(src0, src1, src2);
    ILVR_B2_SB(src1, src0, src2, src1, src10_r, src21_r);

    LD_SB2(src, src_stride, src3, src4);
    src += (2 * src_stride);
    XORI_B2_128_SB(src3, src4);
    ILVR_B2_SB(src3, src2, src4, src3, src32_r, src43_r);

    dst0_r = HEVC_FILT_4TAP_SH(src10_r, src32_r, filt0, filt1);
    dst1_r = HEVC_FILT_4TAP_SH(src21_r, src43_r, filt0, filt1);

    LD_SB2(src, src_stride, src5, src6);
    src += (2 * src_stride);
    XORI_B2_128_SB(src5, src6);
    ILVR_B2_SB(src5, src4, src6, src5, src54_r, src65_r);

    dst2_r = HEVC_FILT_4TAP_SH(src32_r, src54_r, filt0, filt1);
    dst3_r = HEVC_FILT_4TAP_SH(src43_r, src65_r, filt0, filt1);

    SRARI_H4_SH(dst0_r, dst1_r, dst2_r, dst3_r, 6);
    SAT_SH4_SH(dst0_r, dst1_r, dst2_r, dst3_r, 7);
    out0 = PCKEV_XORI128_UB(dst0_r, dst1_r);
    out1 = PCKEV_XORI128_UB(dst2_r, dst3_r);
    ST_W2(out0, 0, 2, dst, dst_stride);
    ST_H2(out0, 2, 6, dst + 4, dst_stride);
    ST_W2(out1, 0, 2, dst + 2 * dst_stride, dst_stride);
    ST_H2(out1, 2, 6, dst + 2 * dst_stride + 4, dst_stride);
    dst += (4 * dst_stride);

    LD_SB2(src, src_stride, src3, src4);
    src += (2 * src_stride);
    XORI_B2_128_SB(src3, src4);
    ILVR_B2_SB(src3, src6, src4, src3, src32_r, src43_r);

    dst0_r = HEVC_FILT_4TAP_SH(src54_r, src32_r, filt0, filt1);
    dst1_r = HEVC_FILT_4TAP_SH(src65_r, src43_r, filt0, filt1);

    LD_SB2(src, src_stride, src5, src6);
    src += (2 * src_stride);
    XORI_B2_128_SB(src5, src6);
    ILVR_B2_SB(src5, src4, src6, src5, src54_r, src65_r);

    dst2_r = HEVC_FILT_4TAP_SH(src32_r, src54_r, filt0, filt1);
    dst3_r = HEVC_FILT_4TAP_SH(src43_r, src65_r, filt0, filt1);

    SRARI_H4_SH(dst0_r, dst1_r, dst2_r, dst3_r, 6);
    SAT_SH4_SH(dst0_r, dst1_r, dst2_r, dst3_r, 7);
    out0 = PCKEV_XORI128_UB(dst0_r, dst1_r);
    out1 = PCKEV_XORI128_UB(dst2_r, dst3_r);
    ST_W2(out0, 0, 2, dst, dst_stride);
    ST_H2(out0, 2, 6, dst + 4, dst_stride);
    ST_W2(out1, 0, 2, dst + 2 * dst_stride, dst_stride);
    ST_H2(out1, 2, 6, dst + 2 * dst_stride + 4, dst_stride);
}
