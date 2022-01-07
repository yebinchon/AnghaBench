
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int area2 ;
 int area3 ;

__attribute__((used)) static void spatial_compensation_7(uint8_t *src, uint8_t *dst, ptrdiff_t stride)
{
    int x, y;

    for (y = 0; y < 8; y++) {
        for (x = 0; x < 8; x++) {
            if (x - 2 * y > 0)
                dst[x] = (src[area3 - 1 + x - 2 * y] + src[area3 + x - 2 * y] + 1) >> 1;
            else
                dst[x] = src[area2 + 8 - y + (x >> 1)];
        }
        dst += stride;
    }
}
