
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static void copy_color_mask(uint8_t *dst, int width, uint8_t mask, uint8_t color)
{
    int i;

    for (i = 0; i < 4; i++) {
        if (mask & (1 << 7 - i))
            dst[i] = color;
        if (mask & (1 << 3 - i))
            dst[width + i] = color;
    }
}
