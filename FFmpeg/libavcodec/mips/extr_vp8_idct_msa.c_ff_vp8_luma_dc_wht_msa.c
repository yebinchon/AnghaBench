
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v8i16 ;
typedef scalar_t__ v4i32 ;
typedef int int16_t ;


 int ADD4 (scalar_t__,int,scalar_t__,int,scalar_t__,int,scalar_t__,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int BUTTERFLY_4 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int LD_SH2 (int *,int,int ,int ) ;
 int SRA_4V (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ;
 int TRANSPOSE4x4_SW_SW (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int UNPCK_SH_SW (int ,scalar_t__,scalar_t__) ;
 int __msa_copy_s_h (int ,int) ;
 int memset (int *,int ,int) ;

void ff_vp8_luma_dc_wht_msa(int16_t block[4][4][16], int16_t input[16])
{
    int16_t *mb_dq_coeff = &block[0][0][0];
    v8i16 input0, input1;
    v4i32 in0, in1, in2, in3, a1, b1, c1, d1;
    v4i32 hz0, hz1, hz2, hz3, vt0, vt1, vt2, vt3;


    LD_SH2(input, 8, input0, input1);
    UNPCK_SH_SW(input0, in0, in1);
    UNPCK_SH_SW(input1, in2, in3);
    BUTTERFLY_4(in0, in1, in2, in3, a1, b1, c1, d1);
    BUTTERFLY_4(a1, d1, c1, b1, hz0, hz1, hz3, hz2);

    TRANSPOSE4x4_SW_SW(hz0, hz1, hz2, hz3, hz0, hz1, hz2, hz3);
    BUTTERFLY_4(hz0, hz1, hz2, hz3, a1, b1, c1, d1);
    BUTTERFLY_4(a1, d1, c1, b1, vt0, vt1, vt3, vt2);
    ADD4(vt0, 3, vt1, 3, vt2, 3, vt3, 3, vt0, vt1, vt2, vt3);
    SRA_4V(vt0, vt1, vt2, vt3, 3);
    mb_dq_coeff[0] = __msa_copy_s_h((v8i16) vt0, 0);
    mb_dq_coeff[16] = __msa_copy_s_h((v8i16) vt1, 0);
    mb_dq_coeff[32] = __msa_copy_s_h((v8i16) vt2, 0);
    mb_dq_coeff[48] = __msa_copy_s_h((v8i16) vt3, 0);
    mb_dq_coeff[64] = __msa_copy_s_h((v8i16) vt0, 2);
    mb_dq_coeff[80] = __msa_copy_s_h((v8i16) vt1, 2);
    mb_dq_coeff[96] = __msa_copy_s_h((v8i16) vt2, 2);
    mb_dq_coeff[112] = __msa_copy_s_h((v8i16) vt3, 2);
    mb_dq_coeff[128] = __msa_copy_s_h((v8i16) vt0, 4);
    mb_dq_coeff[144] = __msa_copy_s_h((v8i16) vt1, 4);
    mb_dq_coeff[160] = __msa_copy_s_h((v8i16) vt2, 4);
    mb_dq_coeff[176] = __msa_copy_s_h((v8i16) vt3, 4);
    mb_dq_coeff[192] = __msa_copy_s_h((v8i16) vt0, 6);
    mb_dq_coeff[208] = __msa_copy_s_h((v8i16) vt1, 6);
    mb_dq_coeff[224] = __msa_copy_s_h((v8i16) vt2, 6);
    mb_dq_coeff[240] = __msa_copy_s_h((v8i16) vt3, 6);

    memset(input, 0, 4 * 4 * sizeof(int16_t));
}
