
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int ff_avg_pixels8_x2_8_mmi (int *,int const*,int ,int) ;

void ff_avg_pixels16_x2_8_mmi(uint8_t *block, const uint8_t *pixels,
    ptrdiff_t line_size, int h)
{
    ff_avg_pixels8_x2_8_mmi(block, pixels, line_size, h);
    ff_avg_pixels8_x2_8_mmi(block + 8, pixels + 8, line_size, h);
}
