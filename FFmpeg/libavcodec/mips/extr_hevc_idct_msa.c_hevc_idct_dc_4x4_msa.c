
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v8i16 ;
typedef int int32_t ;
typedef int int16_t ;


 int ST_SH2 (int ,int ,int*,int) ;
 int __msa_fill_h (int) ;

__attribute__((used)) static void hevc_idct_dc_4x4_msa(int16_t *coeffs)
{
    int32_t val;
    v8i16 dst;

    val = (coeffs[0] + 1) >> 1;
    val = (val + 32) >> 6;
    dst = __msa_fill_h(val);

    ST_SH2(dst, dst, coeffs, 8);
}
