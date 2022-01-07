
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint32_t ;


 int count_leading_ones (char) ;
 int error (char*) ;

__attribute__((used)) static int read_rune(uint32_t *r, char *s, char *end) {
    int len = count_leading_ones(s[0]);
    if (len == 0) {
        *r = s[0];
        return 1;
    }
    if (s + len > end)
        error("invalid UTF-8 sequence");
    for (int i = 1; i < len; i++)
        if ((s[i] & 0xC0) != 0x80)
            error("invalid UTF-8 continuation byte");
    switch (len) {
    case 2:
        *r = ((s[0] & 0x1F) << 6) | (s[1] & 0x3F);
        return 2;
    case 3:
        *r = ((s[0] & 0xF) << 12) | ((s[1] & 0x3F) << 6) | (s[2] & 0x3F);
        return 3;
    case 4:
        *r = ((s[0] & 0x7) << 18) | ((s[1] & 0x3F) << 12) | ((s[2] & 0x3F) << 6) | (s[3] & 0x3F);
        return 4;
    }
    error("invalid UTF-8 sequence");
}
