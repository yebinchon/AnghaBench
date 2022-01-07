
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int ptrdiff_t ;


 int lerp13rgb (int*,int*,int*) ;
 int rgb5652rgb (int*,int ) ;

__attribute__((used)) static unsigned int match_colors(const uint8_t *block, ptrdiff_t stride,
                                 uint16_t c0, uint16_t c1)
{
    uint32_t mask = 0;
    int dirr, dirg, dirb;
    int dots[16];
    int stops[4];
    int x, y, k = 0;
    int c0_point, half_point, c3_point;
    uint8_t color[16];
    static const int indexMap[8] = {
        0 << 30, 2 << 30, 0 << 30, 2 << 30,
        3 << 30, 3 << 30, 1 << 30, 1 << 30,
    };


    rgb5652rgb(color + 0, c0);
    rgb5652rgb(color + 4, c1);
    lerp13rgb(color + 8, color + 0, color + 4);
    lerp13rgb(color + 12, color + 4, color + 0);

    dirr = color[0 * 4 + 0] - color[1 * 4 + 0];
    dirg = color[0 * 4 + 1] - color[1 * 4 + 1];
    dirb = color[0 * 4 + 2] - color[1 * 4 + 2];

    for (y = 0; y < 4; y++) {
        for (x = 0; x < 4; x++)
            dots[k++] = block[0 + x * 4 + y * stride] * dirr +
                        block[1 + x * 4 + y * stride] * dirg +
                        block[2 + x * 4 + y * stride] * dirb;

        stops[y] = color[0 + y * 4] * dirr +
                   color[1 + y * 4] * dirg +
                   color[2 + y * 4] * dirb;
    }
    c0_point = (stops[1] + stops[3]) >> 1;
    half_point = (stops[3] + stops[2]) >> 1;
    c3_point = (stops[2] + stops[0]) >> 1;

    for (x = 0; x < 16; x++) {
        int dot = dots[x];
        int bits = (dot < half_point ? 4 : 0) |
                   (dot < c0_point ? 2 : 0) |
                   (dot < c3_point ? 1 : 0);

        mask >>= 2;
        mask |= indexMap[bits];
    }

    return mask;
}
