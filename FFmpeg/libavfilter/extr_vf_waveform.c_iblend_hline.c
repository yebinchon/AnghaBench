
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static void iblend_hline(uint8_t *dst, int width, int unused, float o1, float o2, int v, int step)
{
    int x;

    for (x = 0; x < width; x += step) {
        dst[x] = (v - dst[x]) * o1 + dst[x] * o2;
    }
}
