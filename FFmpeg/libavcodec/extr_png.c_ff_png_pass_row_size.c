
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* ff_png_pass_xmin ;
 int* ff_png_pass_xshift ;

int ff_png_pass_row_size(int pass, int bits_per_pixel, int width)
{
    int shift, xmin, pass_width;

    xmin = ff_png_pass_xmin[pass];
    if (width <= xmin)
        return 0;
    shift = ff_png_pass_xshift[pass];
    pass_width = (width - xmin + (1 << shift) - 1) >> shift;
    return (pass_width * bits_per_pixel + 7) >> 3;
}
