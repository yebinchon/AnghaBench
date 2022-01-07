
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v8i16 ;
typedef int int16_t ;


 int HEVC_IDCT8x8_COL (int ,int ,int ,int ,int ,int ,int ,int ,int) ;
 int LD_SH8 (int *,int,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int ST_SH8 (int ,int ,int ,int ,int ,int ,int ,int ,int *,int) ;
 int TRANSPOSE8x8_SH_SH (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int * gt8x8_cnst ;

__attribute__((used)) static void hevc_idct_8x8_msa(int16_t *coeffs)
{
    const int16_t *filter = &gt8x8_cnst[0];
    v8i16 in0, in1, in2, in3, in4, in5, in6, in7;

    LD_SH8(coeffs, 8, in0, in1, in2, in3, in4, in5, in6, in7);
    HEVC_IDCT8x8_COL(in0, in1, in2, in3, in4, in5, in6, in7, 7);
    TRANSPOSE8x8_SH_SH(in0, in1, in2, in3, in4, in5, in6, in7,
                       in0, in1, in2, in3, in4, in5, in6, in7);
    HEVC_IDCT8x8_COL(in0, in1, in2, in3, in4, in5, in6, in7, 12);
    TRANSPOSE8x8_SH_SH(in0, in1, in2, in3, in4, in5, in6, in7,
                       in0, in1, in2, in3, in4, in5, in6, in7);
    ST_SH8(in0, in1, in2, in3, in4, in5, in6, in7, coeffs, 8);
}
