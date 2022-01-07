
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;



__attribute__((used)) static inline void rgb24tobgr16_c(const uint8_t *src, uint8_t *dst,
                                  int src_size)
{
    uint16_t *d = (uint16_t *)dst;
    const uint8_t *s = src;
    const uint8_t *end = s + src_size;

    while (s < end) {
        const int b = *s++;
        const int g = *s++;
        const int r = *s++;
        *d++ = (b >> 3) | ((g & 0xFC) << 3) | ((r & 0xF8) << 8);
    }
}
