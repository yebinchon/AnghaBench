
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef unsigned int uint16_t ;



void rgb15tobgr15(const uint8_t *src, uint8_t *dst, int src_size)
{
    int i, num_pixels = src_size >> 1;

    for (i = 0; i < num_pixels; i++) {
        unsigned rgb = ((const uint16_t *)src)[i];
        unsigned br = rgb & 0x7C1F;
        ((uint16_t *)dst)[i] = (br >> 10) | (rgb & 0x3E0) | (br << 10);
    }
}
