
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


 int DOTP_UB2_UH (int ,int ,int ,int ,int ,int ) ;
 int LD_SB (int *) ;
 int LD_UB8 (int *,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int PCKEV_B2_UB (int ,int ,int ,int ,int ,int ) ;
 int SAT_UH4_UH (int ,int ,int ,int ,int) ;
 int SLLI_4V (int ,int ,int ,int ,int) ;
 int SRARI_H4_UH (int ,int ,int ,int ,int) ;
 int ST_W8 (int ,int ,int ,int,int,int,int ,int,int,int,int *,int ) ;
 int VSHF_B2_UB (int ,int ,int ,int ,int ,int ,int ,int ) ;
 int __msa_fill_b (int ) ;
 int __msa_ilvr_b (int ,int ) ;
 int * chroma_mask_arr ;

__attribute__((used)) static void avc_chroma_hz_4x8_msa(uint8_t *src, uint8_t *dst, int32_t stride,
                                  uint32_t coeff0, uint32_t coeff1)
{
    v16u8 src0, src1, src2, src3, src4, src5, src6, src7, out0, out1;
    v16i8 mask;
    v8u16 res0, res1, res2, res3;
    v16i8 coeff_vec0 = __msa_fill_b(coeff0);
    v16i8 coeff_vec1 = __msa_fill_b(coeff1);
    v16u8 coeff_vec = (v16u8) __msa_ilvr_b(coeff_vec0, coeff_vec1);

    mask = LD_SB(&chroma_mask_arr[0]);

    LD_UB8(src, stride, src0, src1, src2, src3, src4, src5, src6, src7);
    VSHF_B2_UB(src0, src1, src2, src3, mask, mask, src0, src2);
    VSHF_B2_UB(src4, src5, src6, src7, mask, mask, src4, src6);
    DOTP_UB2_UH(src0, src2, coeff_vec, coeff_vec, res0, res1);
    DOTP_UB2_UH(src4, src6, coeff_vec, coeff_vec, res2, res3);
    SLLI_4V(res0, res1, res2, res3, 3);
    SRARI_H4_UH(res0, res1, res2, res3, 6);
    SAT_UH4_UH(res0, res1, res2, res3, 7);
    PCKEV_B2_UB(res1, res0, res3, res2, out0, out1);
    ST_W8(out0, out1, 0, 1, 2, 3, 0, 1, 2, 3, dst, stride);
}
