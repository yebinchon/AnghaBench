
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v8i16 ;
typedef int v4i32 ;
typedef int int16_t ;


 int HEVC_IDCT_LUMA4x4_COL (int ,int ,int ,int ,int ,int ,int ,int ,int) ;
 int ILVRL_H2_SW (int ,int ,int ,int ) ;
 int ILVRL_W2_SH (int ,int ,int ,int ) ;
 int LD_SH2 (int *,int,int ,int ) ;
 int PCKEV_H2_SH (int ,int ,int ,int ,int ,int ) ;
 int ST_SH2 (int ,int ,int *,int) ;
 int TRANSPOSE4x4_SW_SW (int ,int ,int ,int ,int ,int ,int ,int ) ;
 int UNPCK_SH_SW (int ,int ,int ) ;

__attribute__((used)) static void hevc_idct_luma_4x4_msa(int16_t *coeffs)
{
    v8i16 in0, in1, dst0, dst1;
    v4i32 in_r0, in_l0, in_r1, in_l1, res0, res1, res2, res3;

    LD_SH2(coeffs, 8, in0, in1);
    UNPCK_SH_SW(in0, in_r0, in_l0);
    UNPCK_SH_SW(in1, in_r1, in_l1);
    HEVC_IDCT_LUMA4x4_COL(in_r0, in_l0, in_r1, in_l1, res0, res1, res2, res3,
                          7);
    TRANSPOSE4x4_SW_SW(res0, res1, res2, res3, in_r0, in_l0, in_r1, in_l1);
    HEVC_IDCT_LUMA4x4_COL(in_r0, in_l0, in_r1, in_l1, res0, res1, res2, res3,
                          12);


    PCKEV_H2_SH(res2, res0, res3, res1, dst0, dst1);
    ILVRL_H2_SW(dst1, dst0, res0, res1);
    ILVRL_W2_SH(res1, res0, dst0, dst1);

    ST_SH2(dst0, dst1, coeffs, 8);
}
