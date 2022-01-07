
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int int16_t ;


 int dct4x4_16 (int *) ;
 int dct4x4_32 (int *) ;

__attribute__((used)) static void dct4x4(int16_t *coef, int bit_depth)
{
    if (bit_depth == 8)
        dct4x4_16(coef);
    else
        dct4x4_32((int32_t *) coef);
}
