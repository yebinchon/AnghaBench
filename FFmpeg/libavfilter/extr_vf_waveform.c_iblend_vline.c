
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static void iblend_vline(uint8_t *dst, int height, int linesize, float o1, float o2, int v, int step)
{
    int y;

    for (y = 0; y < height; y += step) {
        dst[0] = (v - dst[0]) * o1 + dst[0] * o2;

        dst += linesize * step;
    }
}
