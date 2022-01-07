
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;
typedef int int16_t ;


 int ff_vp8_idct_dc_add_mmi (int *,int *,int ) ;

void ff_vp8_idct_dc_add4y_mmi(uint8_t *dst, int16_t block[4][16],
        ptrdiff_t stride)
{
    ff_vp8_idct_dc_add_mmi(dst + 0, block[0], stride);
    ff_vp8_idct_dc_add_mmi(dst + 4, block[1], stride);
    ff_vp8_idct_dc_add_mmi(dst + 8, block[2], stride);
    ff_vp8_idct_dc_add_mmi(dst + 12, block[3], stride);
}
