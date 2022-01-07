
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint16_t ;
typedef int int16_t ;


 int idct_col (int *) ;
 int idct_col2 (int *) ;
 int idct_row (int *) ;
 int stq (int,int *) ;

void ff_simple_idct_axp(int16_t *block)
{

    int i;
    int rowsZero = 1;
    int rowsConstant = 1;

    for (i = 0; i < 8; i++) {
        int sparseness = idct_row(block + 8 * i);

        if (i > 0 && sparseness > 0)
            rowsZero = 0;
        if (sparseness == 2)
            rowsConstant = 0;
    }

    if (rowsZero) {
        idct_col2(block);
    } else if (rowsConstant) {
        idct_col(block);
        for (i = 0; i < 8; i += 2) {
            uint64_t v = (uint16_t) block[0];
            uint64_t w = (uint16_t) block[8];

            v |= v << 16;
            w |= w << 16;
            v |= v << 32;
            w |= w << 32;
            stq(v, block + 0 * 4);
            stq(v, block + 1 * 4);
            stq(w, block + 2 * 4);
            stq(w, block + 3 * 4);
            block += 4 * 4;
        }
    } else {
        for (i = 0; i < 8; i++)
            idct_col(block + i);
    }
}
