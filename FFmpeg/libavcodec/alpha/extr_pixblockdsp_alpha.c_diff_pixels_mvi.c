
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int ptrdiff_t ;
typedef int int16_t ;


 int cmpbge (int,int) ;
 int ldq (int const*) ;
 int stq (int,int *) ;
 int unpkbw (int) ;
 int zap (int,int) ;

__attribute__((used)) static void diff_pixels_mvi(int16_t *block, const uint8_t *s1, const uint8_t *s2,
                            ptrdiff_t stride)
{
    int h = 8;
    uint64_t mask = 0x4040;

    mask |= mask << 16;
    mask |= mask << 32;
    do {
        uint64_t x, y, c, d, a;
        uint64_t signs;

        x = ldq(s1);
        y = ldq(s2);
        c = cmpbge(x, y);
        d = x - y;
        a = zap(mask, c);
        d += 4 * a;
        signs = zap(-1, c);

        stq(unpkbw(d) | (unpkbw(signs) << 8), block);
        stq(unpkbw(d >> 32) | (unpkbw(signs >> 32) << 8), block + 4);

        s1 += stride;
        s2 += stride;
        block += 8;
    } while (--h);
}
