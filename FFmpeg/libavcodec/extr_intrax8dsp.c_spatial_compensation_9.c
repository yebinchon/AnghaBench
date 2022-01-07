
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 size_t FFMIN (int,int) ;
 size_t area2 ;

__attribute__((used)) static void spatial_compensation_9(uint8_t *src, uint8_t *dst, ptrdiff_t stride)
{
    int x, y;

    for (y = 0; y < 8; y++) {
        for (x = 0; x < 8; x++)
            dst[x] = src[area2 + 6 - FFMIN(x + y, 6)];
        dst += stride;
    }
}
