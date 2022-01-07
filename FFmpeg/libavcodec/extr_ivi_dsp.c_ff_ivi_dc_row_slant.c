
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptrdiff_t ;
typedef int int32_t ;
typedef int int16_t ;



void ff_ivi_dc_row_slant(const int32_t *in, int16_t *out, ptrdiff_t pitch, int blk_size)
{
    int x, y;
    int16_t dc_coeff;

    dc_coeff = (*in + 1) >> 1;

    for (x = 0; x < blk_size; x++)
        out[x] = dc_coeff;

    out += pitch;

    for (y = 1; y < blk_size; out += pitch, y++) {
        for (x = 0; x < blk_size; x++)
            out[x] = 0;
    }
}
