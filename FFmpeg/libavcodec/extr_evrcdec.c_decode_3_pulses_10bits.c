
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;



__attribute__((used)) static void decode_3_pulses_10bits(uint16_t fixed_index, float *cod)
{
    float sign;
    int pos;

    sign = (fixed_index & 0x200) ? -1.0 : 1.0;

    pos = ((fixed_index & 0x7) * 7) + 4;
    cod[pos] += sign;
    pos = (((fixed_index >> 3) & 0x7) * 7) + 2;
    cod[pos] -= sign;
    pos = (((fixed_index >> 6) & 0x7) * 7);
    cod[pos] += sign;
}
