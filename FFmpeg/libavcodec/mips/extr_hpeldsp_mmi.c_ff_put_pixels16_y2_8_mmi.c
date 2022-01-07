
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int ff_put_pixels16_l2_8_mmi (int *,int const*,int const*,int ,int ,int ,int) ;

void ff_put_pixels16_y2_8_mmi(uint8_t *block, const uint8_t *pixels,
    ptrdiff_t line_size, int h)
{
    ff_put_pixels16_l2_8_mmi(block, pixels, pixels + line_size, line_size,
            line_size, line_size, h);
}
