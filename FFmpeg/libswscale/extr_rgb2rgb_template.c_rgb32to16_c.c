
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;



__attribute__((used)) static inline void rgb32to16_c(const uint8_t *src, uint8_t *dst, int src_size)
{
    uint16_t *d = (uint16_t *)dst;
    const uint8_t *s = src;
    const uint8_t *end = s + src_size;

    while (s < end) {
        register int rgb = *(const uint32_t *)s;
        s += 4;
        *d++ = ((rgb & 0xFF) >> 3) +
                            ((rgb & 0xFC00) >> 5) +
                            ((rgb & 0xF80000) >> 8);
    }
}
