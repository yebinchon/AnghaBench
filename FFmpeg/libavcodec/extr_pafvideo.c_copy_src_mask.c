
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static void copy_src_mask(uint8_t *dst, int width, uint8_t mask, const uint8_t *src)
{
    int i;

    for (i = 0; i < 4; i++) {
        if (mask & (1 << 7 - i))
            dst[i] = src[i];
        if (mask & (1 << 3 - i))
            dst[width + i] = src[width + i];
    }
}
