
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;
typedef int int32_t ;
typedef int int16_t ;



void ff_ivi_put_pixels_8x8(const int32_t *in, int16_t *out, ptrdiff_t pitch,
                           const uint8_t *flags)
{
    int x, y;

    for (y = 0; y < 8; out += pitch, in += 8, y++)
        for (x = 0; x < 8; x++)
            out[x] = in[x];
}
