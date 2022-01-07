
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;
typedef enum idct_permutation_type { ____Placeholder_idct_permutation_type } idct_permutation_type ;





 scalar_t__ permute_x86 (int *,int const*,int) ;

__attribute__((used)) static void permute(int16_t dst[64], const int16_t src[64],
                    enum idct_permutation_type perm_type)
{
    int i;






    switch (perm_type) {
    case 130:
        for (i = 0; i < 64; i++)
            dst[(i & 0x38) | ((i & 6) >> 1) | ((i & 1) << 2)] = src[i];
        break;
    case 129:
        for (i = 0; i < 64; i++)
            dst[(i & 0x24) | ((i & 3) << 3) | ((i >> 3) & 3)] = src[i];
        break;
    case 128:
        for (i = 0; i < 64; i++)
            dst[(i>>3) | ((i<<3)&0x38)] = src[i];
        break;
    default:
        for (i = 0; i < 64; i++)
            dst[i] = src[i];
        break;
    }
}
