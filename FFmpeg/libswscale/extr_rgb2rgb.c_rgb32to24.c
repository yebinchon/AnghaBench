
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



void rgb32to24(const uint8_t *src, uint8_t *dst, int src_size)
{
    int i, num_pixels = src_size >> 2;

    for (i = 0; i < num_pixels; i++) {






        dst[3 * i + 0] = src[4 * i + 2];
        dst[3 * i + 1] = src[4 * i + 1];
        dst[3 * i + 2] = src[4 * i + 0];

    }
}
