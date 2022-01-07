
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;



__attribute__((used)) static void write_text(uint8_t *dst, const char *s, int linesize, int x, int y)
{
    int i;
    dst += y*linesize + x*3;
    for (i = 0; s[i]; i++, dst += 3) {
        dst[0] = 0x0;
        dst[1] = s[i];
        dst[2] = 0x0f;
    }
}
