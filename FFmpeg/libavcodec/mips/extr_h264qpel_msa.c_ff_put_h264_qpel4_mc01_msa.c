
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v8i16 ;
typedef int v4i32 ;
typedef int v2i64 ;
typedef int v16u8 ;
typedef scalar_t__ v16i8 ;
typedef int uint8_t ;
typedef int ptrdiff_t ;
typedef int int16_t ;


 int AVC_DOT_SH3_SH (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int ILVR_B4_SB (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int ILVR_D2_SB (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int LD_SB4 (int const*,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int LD_SB5 (int const*,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int PCKEV_XORI128_UB (int ,int ) ;
 int SAT_SH2_SH (int ,int ,int) ;
 int SRARI_H2_SH (int ,int ,int) ;
 int ST_W4 (int ,int ,int,int,int,int *,int) ;
 int XORI_B2_128_SB (scalar_t__,scalar_t__) ;
 int __msa_aver_u_b (int ,int ) ;
 scalar_t__ __msa_fill_h (int) ;
 scalar_t__ __msa_insve_d (int ,int,int ) ;
 scalar_t__ __msa_insve_w (int ,int,int ) ;

void ff_put_h264_qpel4_mc01_msa(uint8_t *dst, const uint8_t *src,
                                ptrdiff_t stride)
{
    int16_t filt_const0 = 0xfb01;
    int16_t filt_const1 = 0x1414;
    int16_t filt_const2 = 0x1fb;
    v16u8 out;
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7, src8;
    v16i8 src10_r, src32_r, src54_r, src76_r, src21_r, src43_r, src65_r;
    v16i8 src87_r, src2110, src4332, src6554, src8776, filt0, filt1, filt2;
    v8i16 out10, out32;

    filt0 = (v16i8) __msa_fill_h(filt_const0);
    filt1 = (v16i8) __msa_fill_h(filt_const1);
    filt2 = (v16i8) __msa_fill_h(filt_const2);

    src -= (stride * 2);

    LD_SB5(src, stride, src0, src1, src2, src3, src4);
    src += (5 * stride);
    ILVR_B4_SB(src1, src0, src2, src1, src3, src2, src4, src3, src10_r, src21_r,
               src32_r, src43_r);
    ILVR_D2_SB(src21_r, src10_r, src43_r, src32_r, src2110, src4332);
    XORI_B2_128_SB(src2110, src4332);
    LD_SB4(src, stride, src5, src6, src7, src8);
    ILVR_B4_SB(src5, src4, src6, src5, src7, src6, src8, src7, src54_r, src65_r,
               src76_r, src87_r);
    ILVR_D2_SB(src65_r, src54_r, src87_r, src76_r, src6554, src8776);
    XORI_B2_128_SB(src6554, src8776);
    out10 = AVC_DOT_SH3_SH(src2110, src4332, src6554, filt0, filt1, filt2);
    out32 = AVC_DOT_SH3_SH(src4332, src6554, src8776, filt0, filt1, filt2);
    SRARI_H2_SH(out10, out32, 5);
    SAT_SH2_SH(out10, out32, 7);
    out = PCKEV_XORI128_UB(out10, out32);
    src32_r = (v16i8) __msa_insve_w((v4i32) src2, 1, (v4i32) src3);
    src54_r = (v16i8) __msa_insve_w((v4i32) src4, 1, (v4i32) src5);
    src32_r = (v16i8) __msa_insve_d((v2i64) src32_r, 1, (v2i64) src54_r);
    out = __msa_aver_u_b(out, (v16u8) src32_r);
    ST_W4(out, 0, 1, 2, 3, dst, stride);
}
