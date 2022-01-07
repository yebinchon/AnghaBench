
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 double hypot (int,int) ;

__attribute__((used)) static void ring2_test(uint8_t *dst, int dst_linesize, int off)
{
    int x, y;

    for (y = 0; y < 16*16; y++) {
        for (x = 0; x < 16*16; x++) {
            double d = hypot(x-8*16, y-8*16);
            double r = d/20 - (int)(d/20);
            if (r < off/30.0) {
                dst[x + y*dst_linesize] = 255;
                dst[x + y*dst_linesize+256] = 0;
            } else {
                dst[x + y*dst_linesize] = x;
                dst[x + y*dst_linesize+256] = x;
            }
        }
    }
}
