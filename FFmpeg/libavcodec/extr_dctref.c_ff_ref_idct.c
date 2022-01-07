
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 short* coefficients ;
 short floor (double) ;

void ff_ref_idct(short *block)
{


    unsigned int i, j, k;
    double out[8 * 8];


    for (i = 0; i < 64; i += 8) {
        for (j = 0; j < 8; ++j) {
            double tmp = 0;
            for (k = 0; k < 8; ++k) {
                tmp += block[i + k] * coefficients[k * 8 + j];
            }
            out[i + j] = tmp;
        }
    }


    for (i = 0; i < 8; ++i) {
        for (j = 0; j < 8; ++j) {
            double tmp = 0;
            for (k = 0; k < 64; k += 8) {
                tmp += coefficients[k + i] * out[k + j];
            }
            block[i * 8 + j] = floor(tmp + 0.5);
        }
    }
}
