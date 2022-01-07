
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int Buffer ;


 int * make_buffer () ;
 int read_rune (int*,char*,char*) ;
 int write16 (int *,int) ;

Buffer *to_utf16(char *p, int len) {
    Buffer *b = make_buffer();
    char *end = p + len;
    while (p != end) {
        uint32_t rune;
        p += read_rune(&rune, p, end);
        if (rune < 0x10000) {
            write16(b, rune);
        } else {
            write16(b, (rune >> 10) + 0xD7C0);
            write16(b, (rune & 0x3FF) + 0xDC00);
        }
    }
    return b;
}
