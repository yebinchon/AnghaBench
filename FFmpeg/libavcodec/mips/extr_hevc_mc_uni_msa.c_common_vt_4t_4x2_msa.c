
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v8i16 ;
typedef int v2i64 ;
typedef int v16u8 ;
typedef scalar_t__ v16i8 ;
typedef int uint8_t ;
typedef int int8_t ;
typedef int int32_t ;


 int HEVC_FILT_4TAP_SH (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int ILVR_B2_SB (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int LD_SB2 (int *,int,scalar_t__,scalar_t__) ;
 int LD_SB3 (int *,int,scalar_t__,scalar_t__,scalar_t__) ;
 int LD_SH (int const*) ;
 int PCKEV_XORI128_UB (int ,int ) ;
 int SPLATI_H2_SB (int ,int ,int,scalar_t__,scalar_t__) ;
 int ST_W2 (int ,int ,int,int *,int) ;
 scalar_t__ __msa_ilvr_d (int ,int ) ;
 int __msa_sat_s_h (int ,int) ;
 int __msa_srari_h (int ,int) ;
 scalar_t__ __msa_xori_b (int ,int) ;

__attribute__((used)) static void common_vt_4t_4x2_msa(uint8_t *src, int32_t src_stride,
                                 uint8_t *dst, int32_t dst_stride,
                                 const int8_t *filter)
{
    v16i8 src0, src1, src2, src3, src4, src10_r, src32_r, src21_r, src43_r;
    v16i8 src2110, src4332, filt0, filt1;
    v16u8 out;
    v8i16 filt, out10;

    src -= src_stride;

    filt = LD_SH(filter);
    SPLATI_H2_SB(filt, 0, 1, filt0, filt1);

    LD_SB3(src, src_stride, src0, src1, src2);
    src += (3 * src_stride);

    ILVR_B2_SB(src1, src0, src2, src1, src10_r, src21_r);
    src2110 = (v16i8) __msa_ilvr_d((v2i64) src21_r, (v2i64) src10_r);
    src2110 = (v16i8) __msa_xori_b((v16u8) src2110, 128);
    LD_SB2(src, src_stride, src3, src4);
    ILVR_B2_SB(src3, src2, src4, src3, src32_r, src43_r);
    src4332 = (v16i8) __msa_ilvr_d((v2i64) src43_r, (v2i64) src32_r);
    src4332 = (v16i8) __msa_xori_b((v16u8) src4332, 128);
    out10 = HEVC_FILT_4TAP_SH(src2110, src4332, filt0, filt1);
    out10 = __msa_srari_h(out10, 6);
    out10 = __msa_sat_s_h(out10, 7);
    out = PCKEV_XORI128_UB(out10, out10);
    ST_W2(out, 0, 1, dst, dst_stride);
}
