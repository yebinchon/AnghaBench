
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v8u16 ;
typedef int v8i16 ;
typedef scalar_t__ v16u8 ;
typedef int v16i8 ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef int int32_t ;


 int DOTP_UB4_UH (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int,int,int,int) ;
 int LD_SB (int *) ;
 scalar_t__ LD_UB (int *) ;
 int LD_UB4 (int *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int PCKEV_B2_UB (int,int,int,int,scalar_t__,scalar_t__) ;
 int SAT_UH4_UH (int,int,int,int,int) ;
 int SLLI_4V (int,int,int,int,int) ;
 int SRARI_H4_UH (int,int,int,int,int) ;
 int ST_D1 (int,int ,int *) ;
 int ST_D4 (scalar_t__,scalar_t__,int ,int,int ,int,int *,int) ;
 int VSHF_B2_UB (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ,int ,scalar_t__,scalar_t__) ;
 int __msa_dotp_u_h (scalar_t__,scalar_t__) ;
 int __msa_fill_b (int) ;
 scalar_t__ __msa_ilvr_b (int ,int ) ;
 scalar_t__ __msa_pckev_b (int ,int ) ;
 int __msa_sat_u_h (int,int) ;
 scalar_t__ __msa_srari_h (int ,int) ;
 scalar_t__ __msa_vshf_b (int ,int ,int ) ;
 int * chroma_mask_arr ;

__attribute__((used)) static void avc_chroma_hz_nonmult_msa(uint8_t *src, uint8_t *dst,
                                      int32_t stride, uint32_t coeff0,
                                      uint32_t coeff1, int32_t height)
{
    uint32_t row;
    v16u8 src0, src1, src2, src3, out0, out1;
    v8u16 res0, res1, res2, res3;
    v16i8 mask;
    v16i8 coeff_vec0 = __msa_fill_b(coeff0);
    v16i8 coeff_vec1 = __msa_fill_b(coeff1);
    v16u8 coeff_vec = (v16u8) __msa_ilvr_b(coeff_vec0, coeff_vec1);

    mask = LD_SB(&chroma_mask_arr[32]);

    for (row = height >> 2; row--;) {
        LD_UB4(src, stride, src0, src1, src2, src3);
        src += (4 * stride);

        VSHF_B2_UB(src0, src0, src1, src1, mask, mask, src0, src1);
        VSHF_B2_UB(src2, src2, src3, src3, mask, mask, src2, src3);
        DOTP_UB4_UH(src0, src1, src2, src3, coeff_vec, coeff_vec, coeff_vec,
                    coeff_vec, res0, res1, res2, res3);
        SLLI_4V(res0, res1, res2, res3, 3);
        SRARI_H4_UH(res0, res1, res2, res3, 6);
        SAT_UH4_UH(res0, res1, res2, res3, 7);
        PCKEV_B2_UB(res1, res0, res3, res2, out0, out1);
        ST_D4(out0, out1, 0, 1, 0, 1, dst, stride);
        dst += (4 * stride);
    }

    if (0 != (height % 4)) {
        for (row = (height % 4); row--;) {
            src0 = LD_UB(src);
            src += stride;

            src0 = (v16u8) __msa_vshf_b(mask, (v16i8) src0, (v16i8) src0);

            res0 = __msa_dotp_u_h(src0, coeff_vec);
            res0 <<= 3;
            res0 = (v8u16) __msa_srari_h((v8i16) res0, 6);
            res0 = __msa_sat_u_h(res0, 7);
            res0 = (v8u16) __msa_pckev_b((v16i8) res0, (v16i8) res0);

            ST_D1(res0, 0, dst);
            dst += stride;
        }
    }
}
