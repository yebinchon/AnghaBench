
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v8u16 ;
typedef scalar_t__ v8i16 ;
typedef int v2i64 ;
typedef scalar_t__ v16u8 ;
typedef int v16i8 ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef int int32_t ;


 int ILVR_B4_UB (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int ILVR_W2_UB (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int LD_UB5 (int *,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int ST_H4 (scalar_t__,int ,int,int,int,int *,int ) ;
 int __msa_dotp_u_h (scalar_t__,scalar_t__) ;
 int __msa_fill_b (int ) ;
 scalar_t__ __msa_ilvr_b (int ,int ) ;
 scalar_t__ __msa_ilvr_d (int ,int ) ;
 scalar_t__ __msa_pckev_b (int ,int ) ;
 int __msa_sat_u_h (int,int) ;
 scalar_t__ __msa_srari_h (scalar_t__,int) ;

__attribute__((used)) static void avc_chroma_vt_2x4_msa(uint8_t *src, uint8_t *dst, int32_t stride,
                                  uint32_t coeff0, uint32_t coeff1)
{
    v16u8 src0, src1, src2, src3, src4;
    v16u8 tmp0, tmp1, tmp2, tmp3;
    v8i16 res;
    v8u16 res_r;
    v16i8 coeff_vec0 = __msa_fill_b(coeff0);
    v16i8 coeff_vec1 = __msa_fill_b(coeff1);
    v16u8 coeff_vec = (v16u8) __msa_ilvr_b(coeff_vec0, coeff_vec1);

    LD_UB5(src, stride, src0, src1, src2, src3, src4);
    ILVR_B4_UB(src1, src0, src2, src1, src3, src2, src4, src3,
               tmp0, tmp1, tmp2, tmp3);
    ILVR_W2_UB(tmp1, tmp0, tmp3, tmp2, tmp0, tmp2);

    tmp0 = (v16u8) __msa_ilvr_d((v2i64) tmp2, (v2i64) tmp0);

    res_r = __msa_dotp_u_h(tmp0, coeff_vec);
    res_r <<= 3;
    res_r = (v8u16) __msa_srari_h((v8i16) res_r, 6);
    res_r = __msa_sat_u_h(res_r, 7);

    res = (v8i16) __msa_pckev_b((v16i8) res_r, (v16i8) res_r);

    ST_H4(res, 0, 1, 2, 3, dst, stride);
}
