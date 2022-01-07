
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef unsigned int uint16_t ;



void rgb15tobgr16(const uint8_t *src, uint8_t *dst, int src_size)
{
    int i, num_pixels = src_size >> 1;

    for (i = 0; i < num_pixels; i++) {
        unsigned rgb = ((const uint16_t *)src)[i];
        ((uint16_t *)dst)[i] = ((rgb & 0x7C00) >> 10) | ((rgb & 0x3E0) << 1) | (rgb << 11);
    }
}
