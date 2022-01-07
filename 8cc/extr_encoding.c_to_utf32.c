
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int Buffer ;


 int * make_buffer () ;
 int read_rune (int *,char*,char*) ;
 int write32 (int *,int ) ;

Buffer *to_utf32(char *p, int len) {
    Buffer *b = make_buffer();
    char *end = p + len;
    while (p != end) {
        uint32_t rune;
        p += read_rune(&rune, p, end);
        write32(b, rune);
    }
    return b;
}
