
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int int32_t ;



__attribute__((used)) static void planar_rgb_to_a(uint8_t *_dst, const uint8_t *src[4], int width, int32_t *unused)
{
    uint16_t *dst = (uint16_t *)_dst;
    int i;
    for (i = 0; i < width; i++)
        dst[i] = src[3][i] << 6;
}
