
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int COLOR (int) ;
 int GRAY (int) ;
 int ff_cga_palette ;
 int memcpy (int *,int ,int) ;

__attribute__((used)) static void set_palette(uint32_t *pal)
{
    int r, g, b;
    memcpy(pal, ff_cga_palette, 16 * 4);
    pal += 16;

    for (r = 0; r < 6; r++)
        for (g = 0; g < 6; g++)
            for (b = 0; b < 6; b++)
                *pal++ = 0xFF000000 | (((r) * 40 + 55) << 16) | (((g) * 40 + 55) << 8) | ((b) * 40 + 55);

    for (g = 0; g < 24; g++)
        *pal++ = 0xFF000000 | (((g) * 10 + 8) << 16) | (((g) * 10 + 8) << 8) | ((g) * 10 + 8);
}
