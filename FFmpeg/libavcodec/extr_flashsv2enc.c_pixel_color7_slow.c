
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* colors; } ;
typedef TYPE_1__ Palette ;


 int chroma_diff (int,unsigned int) ;

__attribute__((used)) static int pixel_color7_slow(Palette * palette, unsigned color)
{
    int i, min = 0x7fffffff;
    int minc = -1;
    for (i = 0; i < 128; i++) {
        int c1 = palette->colors[i];
        int diff = chroma_diff(c1, color);
        if (diff < min) {
            min = diff;
            minc = i;
        }
    }
    return minc;
}
