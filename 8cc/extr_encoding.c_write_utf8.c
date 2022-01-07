
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int Buffer ;


 int buf_write (int *,int) ;
 int error (char*,int) ;

void write_utf8(Buffer *b, uint32_t rune) {
    if (rune < 0x80) {
        buf_write(b, rune);
        return;
    }
    if (rune < 0x800) {
        buf_write(b, 0xC0 | (rune >> 6));
        buf_write(b, 0x80 | (rune & 0x3F));
        return;
    }
    if (rune < 0x10000) {
        buf_write(b, 0xE0 | (rune >> 12));
        buf_write(b, 0x80 | ((rune >> 6) & 0x3F));
        buf_write(b, 0x80 | (rune & 0x3F));
        return;
    }
    if (rune < 0x200000) {
        buf_write(b, 0xF0 | (rune >> 18));
        buf_write(b, 0x80 | ((rune >> 12) & 0x3F));
        buf_write(b, 0x80 | ((rune >> 6) & 0x3F));
        buf_write(b, 0x80 | (rune & 0x3F));
        return;
    }
    error("invalid UCS character: \\U%08x", rune);
}
