
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


 int FILT_8TAP_DPADD_S_H (int ,int ,int ,int ,int ,int ,int ,int ) ;
 int ILVR_B2_SB (int ,int ,int ,int ,int ,int ) ;
 int ILVR_B4_SB (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int ILVR_D2_SB (int ,int ,int ,int ,int ,int ) ;
 int ILVR_D3_SB (int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int LD_SB4 (int const*,int,int ,int ,int ,int ) ;
 int LD_SB7 (int const*,int,int ,int ,int ,int ,int ,int ,int ) ;
 int LD_SH (int const*) ;
 int PCKEV_XORI128_UB (int ,int ) ;
 int SAT_SH2_SH (int ,int ,int) ;
 int SPLATI_H4_SB (int ,int ,int,int,int,int ,int ,int ,int ) ;
 int SRARI_H2_SH (int ,int ,int) ;
 int ST_W4 (int ,int ,int,int,int,int *,int) ;
 int XORI_B2_128_SB (int ,int ) ;
 int XORI_B3_128_SB (int ,int ,int ) ;

__attribute__((used)) static void common_vt_8t_4w_msa(const uint8_t *src, int32_t src_stride,
                                uint8_t *dst, int32_t dst_stride,
                                const int8_t *filter, int32_t height)
{
    uint32_t loop_cnt;
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7, src8, src9, src10;
    v16i8 src10_r, src32_r, src54_r, src76_r, src98_r, src21_r, src43_r;
    v16i8 src65_r, src87_r, src109_r, src2110, src4332, src6554, src8776;
    v16i8 src10998, filt0, filt1, filt2, filt3;
    v16u8 out;
    v8i16 filt, out10, out32;

    src -= (3 * src_stride);

    filt = LD_SH(filter);
    SPLATI_H4_SB(filt, 0, 1, 2, 3, filt0, filt1, filt2, filt3);

    LD_SB7(src, src_stride, src0, src1, src2, src3, src4, src5, src6);
    src += (7 * src_stride);

    ILVR_B4_SB(src1, src0, src3, src2, src5, src4, src2, src1, src10_r, src32_r,
               src54_r, src21_r);
    ILVR_B2_SB(src4, src3, src6, src5, src43_r, src65_r);
    ILVR_D3_SB(src21_r, src10_r, src43_r, src32_r, src65_r, src54_r, src2110,
               src4332, src6554);
    XORI_B3_128_SB(src2110, src4332, src6554);

    for (loop_cnt = (height >> 2); loop_cnt--;) {
        LD_SB4(src, src_stride, src7, src8, src9, src10);
        src += (4 * src_stride);

        ILVR_B4_SB(src7, src6, src8, src7, src9, src8, src10, src9, src76_r,
                   src87_r, src98_r, src109_r);
        ILVR_D2_SB(src87_r, src76_r, src109_r, src98_r, src8776, src10998);
        XORI_B2_128_SB(src8776, src10998);
        out10 = FILT_8TAP_DPADD_S_H(src2110, src4332, src6554, src8776, filt0,
                                    filt1, filt2, filt3);
        out32 = FILT_8TAP_DPADD_S_H(src4332, src6554, src8776, src10998, filt0,
                                    filt1, filt2, filt3);
        SRARI_H2_SH(out10, out32, 7);
        SAT_SH2_SH(out10, out32, 7);
        out = PCKEV_XORI128_UB(out10, out32);
        ST_W4(out, 0, 1, 2, 3, dst, dst_stride);
        dst += (4 * dst_stride);

        src2110 = src6554;
        src4332 = src8776;
        src6554 = src10998;
        src6 = src10;
    }
}
