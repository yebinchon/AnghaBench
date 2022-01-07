
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int lrint (int ) ;
 int rgtc1_block_internal (int*,int,int const*,int,int ,int ,int) ;
 int sqrtf (int) ;

__attribute__((used)) static inline void rgtc2_block_internal(uint8_t *dst, ptrdiff_t stride,
                                        const uint8_t *block, int sign)
{

    uint8_t c0[4 * 4 * 4];
    uint8_t c1[4 * 4 * 4];
    int x, y;


    rgtc1_block_internal(c0, 16, block, sign, 0, 0, 4);
    rgtc1_block_internal(c1, 16, block + 8, sign, 0, 0, 4);


    for (y = 0; y < 4; y++) {
        for (x = 0; x < 4; x++) {
            uint8_t *p = dst + x * 4 + y * stride;
            int r = c0[x * 4 + y * 16];
            int g = c1[x * 4 + y * 16];
            int b = 127;

            int d = (255 * 255 - r * r - g * g) / 2;
            if (d > 0)
                b = lrint(sqrtf(d));

            p[0] = r;
            p[1] = g;
            p[2] = b;
            p[3] = 255;
        }
    }
}
