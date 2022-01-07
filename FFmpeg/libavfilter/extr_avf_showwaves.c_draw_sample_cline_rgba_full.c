
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int16_t ;



__attribute__((used)) static void draw_sample_cline_rgba_full(uint8_t *buf, int height, int linesize,
                                         int16_t *prev_y,
                                         const uint8_t color[4], int h)
{
    int k;
    const int start = (height - h) / 2;
    const int end = start + h;
    for (k = start; k < end; k++) {
        buf[k * linesize + 0] = color[0];
        buf[k * linesize + 1] = color[1];
        buf[k * linesize + 2] = color[2];
        buf[k * linesize + 3] = color[3];
    }
}
