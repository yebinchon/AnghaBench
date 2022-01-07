
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;



__attribute__((used)) static inline unsigned sse_block16( unsigned *gamma_lut, uint8_t *a, uint8_t *b, int stride )
{
    int x, y;
    unsigned sum = 0;
    int diff;

    for( y = 0; y < 16; y++ )
    {
        for( x = 0; x < 16; x++ )
        {
            diff = gamma_lut[a[x]] - gamma_lut[b[x]];
            sum += diff * diff;
        }
        a += stride;
        b += stride;
    }
    return sum;
}
