
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef float uint16_t ;



__attribute__((used)) static void blend_hline16(uint8_t *ddst, int width, int unused, float o1, float o2, int v, int step)
{
    uint16_t *dst = (uint16_t *)ddst;
    int x;

    for (x = 0; x < width; x += step) {
        dst[x] = v * o1 + dst[x] * o2;
    }
}
