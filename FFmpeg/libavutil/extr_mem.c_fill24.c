
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int AV_RB24 (int *) ;
 int AV_RL24 (int *) ;
 int AV_WN32 (int *,int) ;

__attribute__((used)) static void fill24(uint8_t *dst, int len)
{






    uint32_t v = AV_RL24(dst - 3);
    uint32_t a = v | v << 24;
    uint32_t b = v >> 8 | v << 16;
    uint32_t c = v >> 16 | v << 8;


    while (len >= 12) {
        AV_WN32(dst, a);
        AV_WN32(dst + 4, b);
        AV_WN32(dst + 8, c);
        dst += 12;
        len -= 12;
    }

    if (len >= 4) {
        AV_WN32(dst, a);
        dst += 4;
        len -= 4;
    }

    if (len >= 4) {
        AV_WN32(dst, b);
        dst += 4;
        len -= 4;
    }

    while (len--) {
        *dst = dst[-3];
        dst++;
    }
}
