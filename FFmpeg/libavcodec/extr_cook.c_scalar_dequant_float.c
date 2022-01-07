
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int random_state; } ;
typedef TYPE_1__ COOKContext ;


 int SUBBAND_SIZE ;
 int av_lfg_get (int *) ;
 float* dither_tab ;
 float** quant_centroid_tab ;
 float* rootpow2tab ;

__attribute__((used)) static void scalar_dequant_float(COOKContext *q, int index, int quant_index,
                                 int *subband_coef_index, int *subband_coef_sign,
                                 float *mlt_p)
{
    int i;
    float f1;

    for (i = 0; i < SUBBAND_SIZE; i++) {
        if (subband_coef_index[i]) {
            f1 = quant_centroid_tab[index][subband_coef_index[i]];
            if (subband_coef_sign[i])
                f1 = -f1;
        } else {

            f1 = dither_tab[index];
            if (av_lfg_get(&q->random_state) < 0x80000000)
                f1 = -f1;
        }
        mlt_p[i] = f1 * rootpow2tab[quant_index + 63];
    }
}
