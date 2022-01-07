
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static void hflip_byte_c(const uint8_t *src, uint8_t *dst, int w)
{
    int j;

    for (j = 0; j < w; j++)
        dst[j] = src[-j];
}
