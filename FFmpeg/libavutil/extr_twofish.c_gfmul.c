
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static uint8_t gfmul(uint8_t a, uint8_t b)
{
    uint8_t r = 0, t;
    while (a && b) {
        if (a & 1)
            r = r ^ b;
        t = b & 0x80;
        b = b << 1;
        if (t)
            b = b ^ 0x4d;
        a = a >> 1;
    }
    return r;
}
