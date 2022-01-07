
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;
typedef enum idct_permutation_type { ____Placeholder_idct_permutation_type } idct_permutation_type ;




 size_t* idct_simple_mmx_perm ;
 int* idct_sse2_row_perm ;

__attribute__((used)) static int permute_x86(int16_t dst[64], const int16_t src[64],
                       enum idct_permutation_type perm_type)
{
    int i;

    switch (perm_type) {
    case 129:
        for (i = 0; i < 64; i++)
            dst[idct_simple_mmx_perm[i]] = src[i];
        return 1;
    case 128:
        for (i = 0; i < 64; i++)
            dst[(i & 0x38) | idct_sse2_row_perm[i & 7]] = src[i];
        return 1;
    }

    return 0;
}
