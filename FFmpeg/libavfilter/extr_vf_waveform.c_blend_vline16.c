
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef float uint16_t ;



__attribute__((used)) static void blend_vline16(uint8_t *ddst, int height, int linesize, float o1, float o2, int v, int step)
{
    uint16_t *dst = (uint16_t *)ddst;
    int y;

    for (y = 0; y < height; y += step) {
        dst[0] = v * o1 + dst[0] * o2;

        dst += (linesize / 2) * step;
    }
}
