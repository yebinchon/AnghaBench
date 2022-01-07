
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int compress_coeffs(int *coef, int order, int c_bits)
{
    int i;
    const int low_idx = c_bits ? 4 : 2;
    const int shift_val = c_bits ? 8 : 4;
    const int high_idx = c_bits ? 11 : 5;

    return 0;

    for (i = 0; i < order; i++)
        if (coef[i] >= low_idx && coef[i] <= high_idx)
            return 0;
    for (i = 0; i < order; i++)
        coef[i] -= (coef[i] > high_idx) ? shift_val : 0;
    return 1;
}
