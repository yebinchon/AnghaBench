
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int area4 ;
 int area6 ;

__attribute__((used)) static void spatial_compensation_4(uint8_t *src, uint8_t *dst, ptrdiff_t stride)
{
    int x, y;

    for (y = 0; y < 8; y++) {
        for (x = 0; x < 8; x++)
            dst[x] = (src[area4 + x] + src[area6 + x] + 1) >> 1;
        dst += stride;
    }
}
