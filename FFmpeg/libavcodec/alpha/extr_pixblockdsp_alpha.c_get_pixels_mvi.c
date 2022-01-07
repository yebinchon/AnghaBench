
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int ptrdiff_t ;
typedef int int16_t ;


 int ldq (int const*) ;
 int stq (int ,int *) ;
 int unpkbw (int) ;

__attribute__((used)) static void get_pixels_mvi(int16_t *restrict block,
                           const uint8_t *restrict pixels, ptrdiff_t stride)
{
    int h = 8;

    do {
        uint64_t p;

        p = ldq(pixels);
        stq(unpkbw(p), block);
        stq(unpkbw(p >> 32), block + 4);

        pixels += stride;
        block += 8;
    } while (--h);
}
