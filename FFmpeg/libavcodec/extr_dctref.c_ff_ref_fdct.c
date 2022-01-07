
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 short* coefficients ;
 short floor (double) ;

void ff_ref_fdct(short *block)
{


    unsigned int i, j, k;
    double out[8 * 8];


    for (i = 0; i < 64; i += 8) {
        for (j = 0; j < 8; ++j) {
            double tmp = 0;
            for (k = 0; k < 8; ++k) {
                tmp += coefficients[i + k] * block[k * 8 + j];
            }
            out[i + j] = tmp * 8;
        }
    }


    for (j = 0; j < 8; ++j) {
        for (i = 0; i < 64; i += 8) {
            double tmp = 0;
            for (k = 0; k < 8; ++k) {
                tmp += out[i + k] * coefficients[j * 8 + k];
            }
            block[i + j] = floor(tmp + 0.499999999999);
        }
    }
}
