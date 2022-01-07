
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v8u16 ;
typedef scalar_t__ v16u8 ;
typedef int v16i8 ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef int int32_t ;


 int DOTP_UB2_UH (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int,int) ;
 int ILVR_B4_UB (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int ILVR_D2_UB (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int LD_UB5 (int *,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int SAT_UH2_UH (int,int,int) ;
 int SRARI_H2_UH (int,int,int) ;
 int ST_W4 (scalar_t__,int ,int,int,int,int *,int ) ;
 int __msa_fill_b (int ) ;
 scalar_t__ __msa_ilvr_b (int ,int ) ;
 scalar_t__ __msa_pckev_b (int ,int ) ;

__attribute__((used)) static void avc_chroma_vt_4x4_msa(uint8_t *src, uint8_t *dst, int32_t stride,
                                  uint32_t coeff0, uint32_t coeff1)
{
    v16u8 src0, src1, src2, src3, src4;
    v16u8 tmp0, tmp1, tmp2, tmp3;
    v16u8 out;
    v8u16 res0_r, res1_r;
    v16i8 coeff_vec0 = __msa_fill_b(coeff0);
    v16i8 coeff_vec1 = __msa_fill_b(coeff1);
    v16u8 coeff_vec = (v16u8) __msa_ilvr_b(coeff_vec0, coeff_vec1);

    LD_UB5(src, stride, src0, src1, src2, src3, src4);
    ILVR_B4_UB(src1, src0, src2, src1, src3, src2, src4, src3, tmp0, tmp1, tmp2,
               tmp3);
    ILVR_D2_UB(tmp1, tmp0, tmp3, tmp2, tmp0, tmp2);
    DOTP_UB2_UH(tmp0, tmp2, coeff_vec, coeff_vec, res0_r, res1_r);
    res0_r <<= 3;
    res1_r <<= 3;
    SRARI_H2_UH(res0_r, res1_r, 6);
    SAT_UH2_UH(res0_r, res1_r, 7);
    out = (v16u8) __msa_pckev_b((v16i8) res1_r, (v16i8) res0_r);
    ST_W4(out, 0, 1, 2, 3, dst, stride);
}
