
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOF ;
 int getchar () ;
 int putb64 () ;
 int putchar (char) ;

int main(void)
{
    static const char b64[] =
        "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
    unsigned i_bits = 0;
    int i_shift = 0;
    int out_len = 0;
    int in;
    while ((in = getchar()) != EOF) {
        i_bits = (i_bits << 8) + in;
        i_shift += 8;
        while (i_shift > 6)
            do { putchar(b64[(i_bits << 6 >> i_shift) & 0x3f]); out_len++; i_shift -= 6; } while (0);
    }
    while (i_shift > 0)
        do { putchar(b64[(i_bits << 6 >> i_shift) & 0x3f]); out_len++; i_shift -= 6; } while (0);
    while (out_len++ & 3)
        putchar('=');
    putchar('\n');

    return 0;
}
