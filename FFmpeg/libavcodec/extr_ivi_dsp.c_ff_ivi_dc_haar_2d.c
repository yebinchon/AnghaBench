
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptrdiff_t ;
typedef int int32_t ;
typedef int int16_t ;



void ff_ivi_dc_haar_2d(const int32_t *in, int16_t *out, ptrdiff_t pitch,
                       int blk_size)
{
    int x, y;
    int16_t dc_coeff;

    dc_coeff = (*in + 0) >> 3;

    for (y = 0; y < blk_size; out += pitch, y++) {
        for (x = 0; x < blk_size; x++)
            out[x] = dc_coeff;
    }
}
