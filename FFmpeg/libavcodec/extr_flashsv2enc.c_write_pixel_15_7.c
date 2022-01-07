
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {unsigned int* colors; } ;
typedef TYPE_1__ Palette ;


 int chroma_diff (unsigned int,unsigned int) ;
 unsigned int pixel_bgr (int const*) ;
 unsigned int pixel_color15 (int const*) ;
 int pixel_color7_fast (TYPE_1__*,unsigned int) ;

__attribute__((used)) static int write_pixel_15_7(Palette * palette, uint8_t * dest, const uint8_t * src,
                            int dist)
{
    unsigned c15 = pixel_color15(src);
    unsigned color = pixel_bgr(src);
    int d15 = chroma_diff(color, color & 0x00f8f8f8);
    int c7 = pixel_color7_fast(palette, c15);
    int d7 = chroma_diff(color, palette->colors[c7]);
    if (dist + d15 >= d7) {
        dest[0] = c7;
        return 1;
    } else {
        dest[0] = 0x80 | (c15 >> 8);
        dest[1] = c15 & 0xff;
        return 2;
    }
}
