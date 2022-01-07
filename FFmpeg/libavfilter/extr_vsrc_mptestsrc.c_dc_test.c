
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int FFMAX (int,int) ;
 int draw_dc (int *,int,int,int,int) ;

__attribute__((used)) static void dc_test(uint8_t *dst, int dst_linesize, int w, int h, int off)
{
    const int step = FFMAX(256/(w*h/256), 1);
    int x, y, color = off;

    for (y = 0; y < h; y += 16) {
        for (x = 0; x < w; x += 16) {
            draw_dc(dst + x + y*dst_linesize, dst_linesize, color, 8, 8);
            color += step;
        }
    }
}
