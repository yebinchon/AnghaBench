
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static inline void rgb24tobgr32_c(const uint8_t *src, uint8_t *dst,
                                  int src_size)
{
    uint8_t *dest = dst;
    const uint8_t *s = src;
    const uint8_t *end = s + src_size;

    while (s < end) {
        *dest++ = *s++;
        *dest++ = *s++;
        *dest++ = *s++;
        *dest++ = 255;

    }
}
