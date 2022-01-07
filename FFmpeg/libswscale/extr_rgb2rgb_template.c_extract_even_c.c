
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static void extract_even_c(const uint8_t *src, uint8_t *dst, int count)
{
    dst += count;
    src += count * 2;
    count = -count;
    while (count < 0) {
        dst[count] = src[2 * count];
        count++;
    }
}
