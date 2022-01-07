
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;


 int hevc_idct_luma_4x4_msa (int *) ;

void ff_hevc_idct_luma_4x4_msa(int16_t *coeffs)
{
    hevc_idct_luma_4x4_msa(coeffs);
}
