
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v8u16 ;
typedef int v8i16 ;
typedef scalar_t__ v16u8 ;
typedef int v16i8 ;
typedef int uint8_t ;
typedef int int8_t ;
typedef int int32_t ;


 int DOTP_UB4_UH (int ,int ,int ,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ,int ,int ,int ) ;
 int ILVR_B4_SB (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int ILVR_D4_SB (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int LD_SB (int const*) ;
 int LD_SB8 (int const*,int,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int LD_SH (int const*) ;
 int PCKEV_B2_SB (int ,int ,int ,int ,int ,int ) ;
 int SAT_UH4_UH (int ,int ,int ,int ,int) ;
 int SRARI_H4_UH (int ,int ,int ,int ,int) ;
 int ST_W8 (int ,int ,int ,int,int,int,int ,int,int,int,int *,int) ;
 scalar_t__ __msa_splati_h (int ,int ) ;

__attribute__((used)) static void common_vt_2t_4x8_msa(const uint8_t *src, int32_t src_stride,
                                 uint8_t *dst, int32_t dst_stride,
                                 const int8_t *filter)
{
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7, src8;
    v16i8 src10_r, src32_r, src54_r, src76_r, src21_r, src43_r;
    v16i8 src65_r, src87_r, src2110, src4332, src6554, src8776;
    v8u16 tmp0, tmp1, tmp2, tmp3;
    v16u8 filt0;
    v8i16 filt;

    filt = LD_SH(filter);
    filt0 = (v16u8) __msa_splati_h(filt, 0);

    LD_SB8(src, src_stride, src0, src1, src2, src3, src4, src5, src6, src7);
    src += (8 * src_stride);

    src8 = LD_SB(src);
    src += src_stride;

    ILVR_B4_SB(src1, src0, src2, src1, src3, src2, src4, src3, src10_r, src21_r,
               src32_r, src43_r);
    ILVR_B4_SB(src5, src4, src6, src5, src7, src6, src8, src7, src54_r, src65_r,
               src76_r, src87_r);
    ILVR_D4_SB(src21_r, src10_r, src43_r, src32_r, src65_r, src54_r,
               src87_r, src76_r, src2110, src4332, src6554, src8776);
    DOTP_UB4_UH(src2110, src4332, src6554, src8776, filt0, filt0, filt0, filt0,
                tmp0, tmp1, tmp2, tmp3);
    SRARI_H4_UH(tmp0, tmp1, tmp2, tmp3, 7);
    SAT_UH4_UH(tmp0, tmp1, tmp2, tmp3, 7);
    PCKEV_B2_SB(tmp1, tmp0, tmp3, tmp2, src2110, src4332);
    ST_W8(src2110, src4332, 0, 1, 2, 3, 0, 1, 2, 3, dst, dst_stride);
}
