
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int int16_t ;



__attribute__((used)) static void unquant_block(int16_t *block, int q, uint8_t *quant_matrix)
{
    int i;

    for (i = 0; i < 64; i++) {
        int val = (uint16_t)block[i];
        int sign = val & 1;

        block[i] = (((val >> 1) ^ -sign) * q * quant_matrix[i] >> 4)
                   + sign;
    }
}
