
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static void mv_test(uint8_t *dst, int dst_linesize, int off)
{
    int x, y;

    for (y = 0; y < 16*16; y++) {
        if (y&16)
            continue;
        for (x = 0; x < 16*16; x++)
            dst[x + y*dst_linesize] = x + off*8/(y/32+1);
    }
}
