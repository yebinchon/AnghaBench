
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


 int ADD2 (int ,int ,int ,int ,int ,int ) ;
 int DOTP_UB4_UH (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int LD_SB (int *) ;
 int LD_UB4 (int *,int,int ,int ,int ,int ) ;
 int LD_UB5 (int *,int,int ,int ,int ,int ,int ) ;
 int MUL4 (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int PCKEV_B2_UB (int ,int ,int ,int ,int ,int ) ;
 int SAT_UH4_UH (int ,int ,int ,int ,int) ;
 int SRARI_H4_UH (int ,int ,int ,int ,int) ;
 int ST_W8 (int ,int ,int ,int,int,int,int ,int,int,int,int *,int) ;
 int VSHF_B2_UB (int ,int ,int ,int ,int ,int ,int ,int ) ;
 int __msa_fill_b (int ) ;
 int __msa_fill_h (int ) ;
 int __msa_ilvr_b (int ,int ) ;
 int * chroma_mask_arr ;

__attribute__((used)) static void avc_chroma_hv_4x8_msa(uint8_t *src, uint8_t *dst, int32_t stride,
                                  uint32_t coef_hor0, uint32_t coef_hor1,
                                  uint32_t coef_ver0, uint32_t coef_ver1)
{
    v16u8 src0, src1, src2, src3, src4, src5, src6, src7, src8, res0, res1;
    v8u16 res_hz0, res_hz1, res_hz2, res_hz3, res_hz4, res_hz5, res_hz6, res_hz7;
    v8u16 res_vt0, res_vt1, res_vt2, res_vt3, res_vt4, res_vt5, res_vt6, res_vt7;
    v16i8 mask;
    v16i8 coeff_hz_vec0 = __msa_fill_b(coef_hor0);
    v16i8 coeff_hz_vec1 = __msa_fill_b(coef_hor1);
    v16u8 coeff_hz_vec = (v16u8) __msa_ilvr_b(coeff_hz_vec0, coeff_hz_vec1);
    v8u16 coeff_vt_vec0 = (v8u16) __msa_fill_h(coef_ver0);
    v8u16 coeff_vt_vec1 = (v8u16) __msa_fill_h(coef_ver1);

    mask = LD_SB(&chroma_mask_arr[0]);

    LD_UB5(src, stride, src0, src1, src2, src3, src4);
    src += (5 * stride);
    LD_UB4(src, stride, src5, src6, src7, src8);

    VSHF_B2_UB(src0, src1, src1, src2, mask, mask, src0, src1);
    VSHF_B2_UB(src2, src3, src3, src4, mask, mask, src2, src3);
    VSHF_B2_UB(src4, src5, src5, src6, mask, mask, src4, src5);
    VSHF_B2_UB(src6, src7, src7, src8, mask, mask, src6, src7);
    DOTP_UB4_UH(src0, src1, src2, src3, coeff_hz_vec, coeff_hz_vec,
                coeff_hz_vec, coeff_hz_vec, res_hz0, res_hz1, res_hz2, res_hz3);
    DOTP_UB4_UH(src4, src5, src6, src7, coeff_hz_vec, coeff_hz_vec,
                coeff_hz_vec, coeff_hz_vec, res_hz4, res_hz5, res_hz6, res_hz7);
    MUL4(res_hz0, coeff_vt_vec1, res_hz1, coeff_vt_vec0, res_hz2, coeff_vt_vec1,
         res_hz3, coeff_vt_vec0, res_vt0, res_vt1, res_vt2, res_vt3);
    MUL4(res_hz4, coeff_vt_vec1, res_hz5, coeff_vt_vec0, res_hz6, coeff_vt_vec1,
         res_hz7, coeff_vt_vec0, res_vt4, res_vt5, res_vt6, res_vt7);
    ADD2(res_vt0, res_vt1, res_vt2, res_vt3, res_vt0, res_vt1);
    ADD2(res_vt4, res_vt5, res_vt6, res_vt7, res_vt2, res_vt3);
    SRARI_H4_UH(res_vt0, res_vt1, res_vt2, res_vt3, 6);
    SAT_UH4_UH(res_vt0, res_vt1, res_vt2, res_vt3, 7);
    PCKEV_B2_UB(res_vt1, res_vt0, res_vt3, res_vt2, res0, res1);
    ST_W8(res0, res1, 0, 1, 2, 3, 0, 1, 2, 3, dst, stride);
}
