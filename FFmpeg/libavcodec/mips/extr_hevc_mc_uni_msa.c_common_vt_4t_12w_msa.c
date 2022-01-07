
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v8i16 ;
typedef int v2i64 ;
typedef int v16u8 ;
typedef scalar_t__ v16i8 ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef int int8_t ;
typedef int int32_t ;


 int HEVC_FILT_4TAP_SH (scalar_t__,scalar_t__,int ,int ) ;
 int ILVL_B2_SB (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int ILVR_B2_SB (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int LD_SB3 (int *,int,scalar_t__,scalar_t__,scalar_t__) ;
 int LD_SB4 (int *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int LD_SH (int const*) ;
 int PCKEV_XORI128_UB (int ,int ) ;
 int SAT_SH2_SH (int ,int ,int) ;
 int SAT_SH4_SH (int ,int ,int ,int ,int) ;
 int SPLATI_H2_SH (int ,int ,int,int ,int ) ;
 int SRARI_H2_SH (int ,int ,int) ;
 int SRARI_H4_SH (int ,int ,int ,int ,int) ;
 int ST_D4 (int ,int ,int ,int,int ,int,int *,int) ;
 int ST_W4 (int ,int ,int,int,int,int *,int) ;
 int XORI_B3_128_SB (scalar_t__,scalar_t__,scalar_t__) ;
 int XORI_B4_128_SB (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ __msa_ilvr_d (int ,int ) ;

__attribute__((used)) static void common_vt_4t_12w_msa(uint8_t *src, int32_t src_stride,
                                 uint8_t *dst, int32_t dst_stride,
                                 const int8_t *filter, int32_t height)
{
    uint32_t loop_cnt;
    v16i8 src0, src1, src2, src3, src4, src5, src6;
    v16u8 out0, out1;
    v16i8 src10_r, src32_r, src21_r, src43_r, src54_r, src65_r;
    v16i8 src10_l, src32_l, src54_l, src21_l, src43_l, src65_l;
    v16i8 src2110, src4332, src6554;
    v8i16 dst0_r, dst1_r, dst2_r, dst3_r, dst0_l, dst1_l, filt0, filt1;
    v8i16 filter_vec;

    src -= (1 * src_stride);

    filter_vec = LD_SH(filter);
    SPLATI_H2_SH(filter_vec, 0, 1, filt0, filt1);

    LD_SB3(src, src_stride, src0, src1, src2);
    src += (3 * src_stride);

    XORI_B3_128_SB(src0, src1, src2);
    ILVR_B2_SB(src1, src0, src2, src1, src10_r, src21_r);
    ILVL_B2_SB(src1, src0, src2, src1, src10_l, src21_l);
    src2110 = (v16i8) __msa_ilvr_d((v2i64) src21_l, (v2i64) src10_l);

    for (loop_cnt = 4; loop_cnt--;) {
        LD_SB4(src, src_stride, src3, src4, src5, src6);
        src += (4 * src_stride);

        XORI_B4_128_SB(src3, src4, src5, src6);
        ILVR_B2_SB(src3, src2, src4, src3, src32_r, src43_r);
        ILVL_B2_SB(src3, src2, src4, src3, src32_l, src43_l);
        src4332 = (v16i8) __msa_ilvr_d((v2i64) src43_l, (v2i64) src32_l);
        ILVR_B2_SB(src5, src4, src6, src5, src54_r, src65_r);
        ILVL_B2_SB(src5, src4, src6, src5, src54_l, src65_l);
        src6554 = (v16i8) __msa_ilvr_d((v2i64) src65_l, (v2i64) src54_l);

        dst0_r = HEVC_FILT_4TAP_SH(src10_r, src32_r, filt0, filt1);
        dst1_r = HEVC_FILT_4TAP_SH(src21_r, src43_r, filt0, filt1);
        dst0_l = HEVC_FILT_4TAP_SH(src2110, src4332, filt0, filt1);
        dst2_r = HEVC_FILT_4TAP_SH(src32_r, src54_r, filt0, filt1);
        dst3_r = HEVC_FILT_4TAP_SH(src43_r, src65_r, filt0, filt1);
        dst1_l = HEVC_FILT_4TAP_SH(src4332, src6554, filt0, filt1);

        SRARI_H4_SH(dst0_r, dst1_r, dst2_r, dst3_r, 6);
        SRARI_H2_SH(dst0_l, dst1_l, 6);
        SAT_SH4_SH(dst0_r, dst1_r, dst2_r, dst3_r, 7);
        SAT_SH2_SH(dst0_l, dst1_l, 7);
        out0 = PCKEV_XORI128_UB(dst0_r, dst1_r);
        out1 = PCKEV_XORI128_UB(dst2_r, dst3_r);
        ST_D4(out0, out1, 0, 1, 0, 1, dst, dst_stride);
        out0 = PCKEV_XORI128_UB(dst0_l, dst1_l);
        ST_W4(out0, 0, 1, 2, 3, dst + 8, dst_stride);
        dst += (4 * dst_stride);

        src2 = src6;
        src10_r = src54_r;
        src21_r = src65_r;
        src2110 = src6554;
    }
}
