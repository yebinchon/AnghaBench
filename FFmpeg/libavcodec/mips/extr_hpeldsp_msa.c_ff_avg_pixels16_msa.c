
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int avg_width16_msa (int const*,int ,int *,int ,int) ;

void ff_avg_pixels16_msa(uint8_t *block, const uint8_t *pixels,
                         ptrdiff_t line_size, int h)
{
    avg_width16_msa(pixels, line_size, block, line_size, h);
}
