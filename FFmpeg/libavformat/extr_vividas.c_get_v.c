
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const uint8_t ;
typedef int uint32_t ;


 int UINT_MAX ;

__attribute__((used)) static uint32_t get_v(uint8_t *p, int len)
{
    uint32_t v = 0;
    const uint8_t *end = p + len;

    do {
        if (p >= end || v >= UINT_MAX / 128 - *p)
            return v;
        v <<= 7;
        v += *p & 0x7f;
    } while (*p++ & 0x80);

    return v;
}
