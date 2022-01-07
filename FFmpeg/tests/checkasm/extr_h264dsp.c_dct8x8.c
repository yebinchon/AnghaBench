
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int int16_t ;


 int dct8x8_16 (int *) ;
 int dct8x8_32 (int *) ;

__attribute__((used)) static void dct8x8(int16_t *coef, int bit_depth)
{
    if (bit_depth == 8) {
        dct8x8_16(coef);
    } else {
        dct8x8_32((int32_t *) coef);
    }
}
