
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int ptrdiff_t ;



__attribute__((used)) static void restore_rgb_planes10_c(uint16_t *src_r,
                                   uint16_t *src_g,
                                   uint16_t *src_b,
                                   ptrdiff_t linesize_r,
                                   ptrdiff_t linesize_g,
                                   ptrdiff_t linesize_b,
                                   int width, int height)
{
    int r, g, b;
    int i, j;

    for (j = 0; j < height; j++) {
        for (i = 0; i < width; i++) {
            r = src_r[i];
            g = src_g[i];
            b = src_b[i];
            src_r[i] = (r + g - 0x200) & 0x3FF;
            src_b[i] = (b + g - 0x200) & 0x3FF;
        }
        src_r += linesize_r;
        src_g += linesize_g;
        src_b += linesize_b;
    }
}
