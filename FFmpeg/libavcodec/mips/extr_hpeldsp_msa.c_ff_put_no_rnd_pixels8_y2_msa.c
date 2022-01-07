
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int common_vt_bil_no_rnd_4x8_msa (int const*,int ,int *,int ) ;
 int common_vt_bil_no_rnd_8x8_msa (int const*,int ,int *,int ) ;

void ff_put_no_rnd_pixels8_y2_msa(uint8_t *block, const uint8_t *pixels,
                                  ptrdiff_t line_size, int h)
{
    if (h == 8) {
        common_vt_bil_no_rnd_8x8_msa(pixels, line_size, block, line_size);
    } else if (h == 4) {
        common_vt_bil_no_rnd_4x8_msa(pixels, line_size, block, line_size);
    }
}
