
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;
typedef int int16_t ;


 int ff_vp8_idct_dc_add_msa (int *,int *,int ) ;

void ff_vp8_idct_dc_add4y_msa(uint8_t *dst, int16_t block[4][16],
                              ptrdiff_t stride)
{
    ff_vp8_idct_dc_add_msa(dst, &block[0][0], stride);
    ff_vp8_idct_dc_add_msa(dst + 4, &block[1][0], stride);
    ff_vp8_idct_dc_add_msa(dst + 8, &block[2][0], stride);
    ff_vp8_idct_dc_add_msa(dst + 12, &block[3][0], stride);
}
