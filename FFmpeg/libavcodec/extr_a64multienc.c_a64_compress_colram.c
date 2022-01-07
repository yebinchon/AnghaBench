
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static void a64_compress_colram(unsigned char *buf, int *charmap, uint8_t *colram)
{
    int a;
    uint8_t temp;


    for (a = 0; a < 256; a++) {
        temp = colram[charmap[a + 0x000]] << 0;
        temp |= colram[charmap[a + 0x100]] << 1;
        temp |= colram[charmap[a + 0x200]] << 2;
        if (a < 0xe8) temp |= colram[charmap[a + 0x300]] << 3;
        buf[a] = temp << 2;
    }
}
