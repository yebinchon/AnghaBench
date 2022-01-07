
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static void scaledown(uint8_t *dst, const uint8_t *src, int w)
{
    int x;
    for (x = 0; x < w - 7; x+=8) {
        dst[x + 0] = src[2*x + 0];
        dst[x + 1] = src[2*x + 2];
        dst[x + 2] = src[2*x + 4];
        dst[x + 3] = src[2*x + 6];
        dst[x + 4] = src[2*x + 8];
        dst[x + 5] = src[2*x +10];
        dst[x + 6] = src[2*x +12];
        dst[x + 7] = src[2*x +14];
    }
    for (; x < w; x++) {
        dst[x] = src[2*x];
    }
}
