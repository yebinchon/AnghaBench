
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int member_0; } ;
typedef TYPE_1__ v8i16 ;
typedef int v4i32 ;
typedef int int16_t ;


 int HEVC_IDCT4x4_COL (int ,int ,int ,int ,int ,int ,int ,int ,int) ;
 int ILVRL_H2_SW (TYPE_1__,TYPE_1__,int ,int ) ;
 int ILVRL_W2_SH (int ,int ,TYPE_1__,TYPE_1__) ;
 int LD_SH2 (int *,int,TYPE_1__,TYPE_1__) ;
 int PCKEV_H2_SH (int ,int ,int ,int ,TYPE_1__,TYPE_1__) ;
 int ST_SH2 (TYPE_1__,TYPE_1__,int *,int) ;
 int TRANSPOSE4x4_SW_SW (int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void hevc_idct_4x4_msa(int16_t *coeffs)
{
    v8i16 in0, in1;
    v4i32 in_r0, in_l0, in_r1, in_l1;
    v4i32 sum0, sum1, sum2, sum3;
    v8i16 zeros = { 0 };

    LD_SH2(coeffs, 8, in0, in1);
    ILVRL_H2_SW(zeros, in0, in_r0, in_l0);
    ILVRL_H2_SW(zeros, in1, in_r1, in_l1);

    HEVC_IDCT4x4_COL(in_r0, in_l0, in_r1, in_l1, sum0, sum1, sum2, sum3, 7);
    TRANSPOSE4x4_SW_SW(sum0, sum1, sum2, sum3, in_r0, in_l0, in_r1, in_l1);
    HEVC_IDCT4x4_COL(in_r0, in_l0, in_r1, in_l1, sum0, sum1, sum2, sum3, 12);


    PCKEV_H2_SH(sum2, sum0, sum3, sum1, in0, in1);
    ILVRL_H2_SW(in1, in0, sum0, sum1);
    ILVRL_W2_SH(sum1, sum0, in0, in1);

    ST_SH2(in0, in1, coeffs, 8);
}
