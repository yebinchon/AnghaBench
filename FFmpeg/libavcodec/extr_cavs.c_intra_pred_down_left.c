
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int LOWPASS (int*,int) ;

__attribute__((used)) static void intra_pred_down_left(uint8_t *d, uint8_t *top, uint8_t *left, ptrdiff_t stride)
{
    int x, y;
    for (y = 0; y < 8; y++)
        for (x = 0; x < 8; x++)
            d[y * stride + x] = (LOWPASS(top, x + y + 2) + LOWPASS(left, x + y + 2)) >> 1;
}
