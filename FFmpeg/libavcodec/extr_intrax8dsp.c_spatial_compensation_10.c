
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int area2 ;
 int area4 ;

__attribute__((used)) static void spatial_compensation_10(uint8_t *src, uint8_t *dst, ptrdiff_t stride)
{
    int x, y;

    for (y = 0; y < 8; y++) {
        for (x = 0; x < 8; x++)
            dst[x] = (src[area2 + 7 - y] * (8 - x) + src[area4 + x] * x + 4) >> 3;
        dst += stride;
    }
}
