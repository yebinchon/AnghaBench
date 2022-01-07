
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fb_height ;
 int fb_width ;
 int memset (unsigned char*,int ,unsigned int) ;

__attribute__((used)) static void vcsm_square_draw_pattern(unsigned char *buffer)
{
    static unsigned x_offset;

    unsigned char *line_start = (unsigned char *) buffer;
    unsigned width = fb_width > 32 ? 32 : fb_width;
    int i = 0;
    size_t stride = fb_width << 2;

    x_offset = (x_offset + 1) % (fb_width - width);
    for (i = 0; i < fb_height; i++) {
        memset(line_start + (x_offset << 2), ~0, width << 2);
        line_start += stride;
    }
}
