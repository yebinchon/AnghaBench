
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int Palette ;


 scalar_t__ write_pixel_15_7 (int *,int *,int const*,int) ;

__attribute__((used)) static inline int encode_15_7_sl(Palette * palette, uint8_t * dest,
                                 const uint8_t * src, int width, int dist)
{
    int len = 0, x;
    for (x = 0; x < width; x++) {
        len += write_pixel_15_7(palette, dest + len, src + 3 * x, dist);
    }
    return len;
}
