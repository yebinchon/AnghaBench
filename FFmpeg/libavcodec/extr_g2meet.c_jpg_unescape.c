
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static void jpg_unescape(const uint8_t *src, int src_size,
                         uint8_t *dst, int *dst_size)
{
    const uint8_t *src_end = src + src_size;
    uint8_t *dst_start = dst;

    while (src < src_end) {
        uint8_t x = *src++;

        *dst++ = x;

        if (x == 0xFF && !*src)
            src++;
    }
    *dst_size = dst - dst_start;
}
