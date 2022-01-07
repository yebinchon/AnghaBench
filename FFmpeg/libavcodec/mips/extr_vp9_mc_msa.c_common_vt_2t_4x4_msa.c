
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ v8u16 ;
typedef int v8i16 ;
typedef scalar_t__ v16u8 ;
typedef int v16i8 ;
typedef int uint8_t ;
typedef int int8_t ;
typedef int int32_t ;


 int DOTP_UB2_UH (int ,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int ILVR_B4_SB (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int ILVR_D2_SB (int ,int ,int ,int ,int ,int ) ;
 int LD_SB5 (int const*,int,int ,int ,int ,int ,int ) ;
 int LD_SH (int const*) ;
 int SAT_UH2_UH (scalar_t__,scalar_t__,int) ;
 int SRARI_H2_UH (scalar_t__,scalar_t__,int) ;
 int ST_W4 (int ,int ,int,int,int,int *,int) ;
 int __msa_pckev_b (int ,int ) ;
 scalar_t__ __msa_splati_h (int ,int ) ;

__attribute__((used)) static void common_vt_2t_4x4_msa(const uint8_t *src, int32_t src_stride,
                                 uint8_t *dst, int32_t dst_stride,
                                 const int8_t *filter)
{
    v16i8 src0, src1, src2, src3, src4;
    v16i8 src10_r, src32_r, src21_r, src43_r, src2110, src4332;
    v16u8 filt0;
    v8i16 filt;
    v8u16 tmp0, tmp1;

    filt = LD_SH(filter);
    filt0 = (v16u8) __msa_splati_h(filt, 0);

    LD_SB5(src, src_stride, src0, src1, src2, src3, src4);
    src += (5 * src_stride);

    ILVR_B4_SB(src1, src0, src2, src1, src3, src2, src4, src3,
               src10_r, src21_r, src32_r, src43_r);
    ILVR_D2_SB(src21_r, src10_r, src43_r, src32_r, src2110, src4332);
    DOTP_UB2_UH(src2110, src4332, filt0, filt0, tmp0, tmp1);
    SRARI_H2_UH(tmp0, tmp1, 7);
    SAT_UH2_UH(tmp0, tmp1, 7);
    src2110 = __msa_pckev_b((v16i8) tmp1, (v16i8) tmp0);
    ST_W4(src2110, 0, 1, 2, 3, dst, dst_stride);
}
