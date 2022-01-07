
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


 int DOTP_UB4_UH (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int,int,int,int) ;
 int LD_SB (int *) ;
 scalar_t__ LD_UB (int *) ;
 int LD_UB4 (int *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int MUL4 (int,int,int,int,int,int,int,int,int,int,int,int) ;
 int PCKEV_B2_UB (int,int,int,int,scalar_t__,scalar_t__) ;
 int SAT_UH4_UH (int,int,int,int,int) ;
 int SRARI_H4_UH (int,int,int,int,int) ;
 int ST_D4 (scalar_t__,scalar_t__,int ,int,int ,int,int *,int) ;
 int VSHF_B2_UB (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ,int ,scalar_t__,scalar_t__) ;
 int __msa_dotp_u_h (scalar_t__,scalar_t__) ;
 int __msa_fill_b (int ) ;
 int __msa_fill_h (int ) ;
 scalar_t__ __msa_ilvr_b (int ,int ) ;
 scalar_t__ __msa_vshf_b (int ,int ,int ) ;
 int * chroma_mask_arr ;

__attribute__((used)) static void avc_chroma_hv_8x4_msa(uint8_t *src, uint8_t *dst, int32_t stride,
                                  uint32_t coef_hor0, uint32_t coef_hor1,
                                  uint32_t coef_ver0, uint32_t coef_ver1)
{
    v16u8 src0, src1, src2, src3, src4, out0, out1;
    v8u16 res_hz0, res_hz1, res_hz2, res_hz3, res_hz4;
    v8u16 res_vt0, res_vt1, res_vt2, res_vt3;
    v16i8 mask;
    v16i8 coeff_hz_vec0 = __msa_fill_b(coef_hor0);
    v16i8 coeff_hz_vec1 = __msa_fill_b(coef_hor1);
    v16u8 coeff_hz_vec = (v16u8) __msa_ilvr_b(coeff_hz_vec0, coeff_hz_vec1);
    v8u16 coeff_vt_vec0 = (v8u16) __msa_fill_h(coef_ver0);
    v8u16 coeff_vt_vec1 = (v8u16) __msa_fill_h(coef_ver1);

    mask = LD_SB(&chroma_mask_arr[32]);

    src0 = LD_UB(src);
    src += stride;

    src0 = (v16u8) __msa_vshf_b(mask, (v16i8) src0, (v16i8) src0);
    res_hz0 = __msa_dotp_u_h(src0, coeff_hz_vec);

    LD_UB4(src, stride, src1, src2, src3, src4);
    src += (4 * stride);

    VSHF_B2_UB(src1, src1, src2, src2, mask, mask, src1, src2);
    VSHF_B2_UB(src3, src3, src4, src4, mask, mask, src3, src4);
    DOTP_UB4_UH(src1, src2, src3, src4, coeff_hz_vec, coeff_hz_vec,
                coeff_hz_vec, coeff_hz_vec, res_hz1, res_hz2, res_hz3, res_hz4);
    MUL4(res_hz1, coeff_vt_vec0, res_hz2, coeff_vt_vec0, res_hz3, coeff_vt_vec0,
         res_hz4, coeff_vt_vec0, res_vt0, res_vt1, res_vt2, res_vt3);

    res_vt0 += (res_hz0 * coeff_vt_vec1);
    res_vt1 += (res_hz1 * coeff_vt_vec1);
    res_vt2 += (res_hz2 * coeff_vt_vec1);
    res_vt3 += (res_hz3 * coeff_vt_vec1);

    SRARI_H4_UH(res_vt0, res_vt1, res_vt2, res_vt3, 6);
    SAT_UH4_UH(res_vt0, res_vt1, res_vt2, res_vt3, 7);
    PCKEV_B2_UB(res_vt1, res_vt0, res_vt3, res_vt2, out0, out1);
    ST_D4(out0, out1, 0, 1, 0, 1, dst, stride);
}
