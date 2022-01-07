
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



void ff_draw_pc_font(uint8_t *dst, int linesize, const uint8_t *font, int font_height, int ch, int fg, int bg)
{
    int char_y, mask;
    for (char_y = 0; char_y < font_height; char_y++) {
        for (mask = 0x80; mask; mask >>= 1) {
            *dst++ = font[ch * font_height + char_y] & mask ? fg : bg;
        }
        dst += linesize - 8;
    }
}
