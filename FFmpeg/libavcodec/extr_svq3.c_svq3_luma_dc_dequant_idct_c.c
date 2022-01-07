
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int16_t ;



 unsigned int* svq3_dequant_coeff ;

__attribute__((used)) static void svq3_luma_dc_dequant_idct_c(int16_t *output, int16_t *input, int qp)
{
    const unsigned qmul = svq3_dequant_coeff[qp];

    int i;
    int temp[16];
    static const uint8_t x_offset[4] = { 0, 1 * 16, 4 * 16, 5 * 16 };

    for (i = 0; i < 4; i++) {
        const int z0 = 13 * (input[4 * i + 0] + input[4 * i + 2]);
        const int z1 = 13 * (input[4 * i + 0] - input[4 * i + 2]);
        const int z2 = 7 * input[4 * i + 1] - 17 * input[4 * i + 3];
        const int z3 = 17 * input[4 * i + 1] + 7 * input[4 * i + 3];

        temp[4 * i + 0] = z0 + z3;
        temp[4 * i + 1] = z1 + z2;
        temp[4 * i + 2] = z1 - z2;
        temp[4 * i + 3] = z0 - z3;
    }

    for (i = 0; i < 4; i++) {
        const int offset = x_offset[i];
        const int z0 = 13 * (temp[4 * 0 + i] + temp[4 * 2 + i]);
        const int z1 = 13 * (temp[4 * 0 + i] - temp[4 * 2 + i]);
        const int z2 = 7 * temp[4 * 1 + i] - 17 * temp[4 * 3 + i];
        const int z3 = 17 * temp[4 * 1 + i] + 7 * temp[4 * 3 + i];

        output[16 * 0 + offset] = (int)((z0 + z3) * qmul + 0x80000) >> 20;
        output[16 * 2 + offset] = (int)((z1 + z2) * qmul + 0x80000) >> 20;
        output[16 * 8 + offset] = (int)((z1 - z2) * qmul + 0x80000) >> 20;
        output[16 * 10 + offset] = (int)((z0 - z3) * qmul + 0x80000) >> 20;
    }
}
