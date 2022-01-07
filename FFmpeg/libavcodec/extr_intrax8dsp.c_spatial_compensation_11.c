
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int area2 ;
 int area4 ;

__attribute__((used)) static void spatial_compensation_11(uint8_t *src, uint8_t *dst, ptrdiff_t stride)
{
    int x, y;

    for (y = 0; y < 8; y++) {
        for (x = 0; x < 8; x++)
            dst[x] = (src[area2 + 7 - y] * y + src[area4 + x] * (8 - y) + 4) >> 3;
        dst += stride;
    }
}
