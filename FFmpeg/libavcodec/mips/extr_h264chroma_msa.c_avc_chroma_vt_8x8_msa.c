
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v8u16 ;
typedef int v16u8 ;
typedef int v16i8 ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef int int32_t ;


 int DOTP_UB4_UH (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int ILVR_B4_UB (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int LD_UB4 (int *,int,int ,int ,int ,int ) ;
 int LD_UB5 (int *,int,int ,int ,int ,int ,int ) ;
 int PCKEV_B2_UB (int ,int ,int ,int ,int ,int ) ;
 int SAT_UH4_UH (int ,int ,int ,int ,int) ;
 int SLLI_4V (int ,int ,int ,int ,int) ;
 int SRARI_H4_UH (int ,int ,int ,int ,int) ;
 int ST_D8 (int ,int ,int ,int ,int ,int,int ,int,int ,int,int ,int,int *,int) ;
 int __msa_fill_b (int ) ;
 int __msa_ilvr_b (int ,int ) ;

__attribute__((used)) static void avc_chroma_vt_8x8_msa(uint8_t *src, uint8_t *dst, int32_t stride,
                                  uint32_t coeff0, uint32_t coeff1)
{
    v16u8 src0, src1, src2, src3, src4, src5, src6, src7, src8;
    v16u8 out0, out1, out2, out3;
    v8u16 res0, res1, res2, res3, res4, res5, res6, res7;
    v16i8 coeff_vec0 = __msa_fill_b(coeff0);
    v16i8 coeff_vec1 = __msa_fill_b(coeff1);
    v16u8 coeff_vec = (v16u8) __msa_ilvr_b(coeff_vec0, coeff_vec1);

    LD_UB5(src, stride, src0, src1, src2, src3, src4);
    src += (5 * stride);
    LD_UB4(src, stride, src5, src6, src7, src8);
    ILVR_B4_UB(src1, src0, src2, src1, src3, src2, src4, src3, src0, src1, src2,
               src3);
    ILVR_B4_UB(src5, src4, src6, src5, src7, src6, src8, src7, src4, src5, src6,
               src7);
    DOTP_UB4_UH(src0, src1, src2, src3, coeff_vec, coeff_vec, coeff_vec,
                coeff_vec, res0, res1, res2, res3);
    DOTP_UB4_UH(src4, src5, src6, src7, coeff_vec, coeff_vec, coeff_vec,
                coeff_vec, res4, res5, res6, res7);
    SLLI_4V(res0, res1, res2, res3, 3);
    SLLI_4V(res4, res5, res6, res7, 3);
    SRARI_H4_UH(res0, res1, res2, res3, 6);
    SRARI_H4_UH(res4, res5, res6, res7, 6);
    SAT_UH4_UH(res0, res1, res2, res3, 7);
    SAT_UH4_UH(res0, res1, res2, res3, 7);
    PCKEV_B2_UB(res1, res0, res3, res2, out0, out1);
    PCKEV_B2_UB(res5, res4, res7, res6, out2, out3);
    ST_D8(out0, out1, out2, out3, 0, 1, 0, 1, 0, 1, 0, 1, dst, stride);
}
