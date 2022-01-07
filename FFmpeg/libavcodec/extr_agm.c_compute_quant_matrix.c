
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; int* luma_quant_matrix; int* chroma_quant_matrix; int key_frame; } ;
typedef TYPE_1__ AGMContext ;


 int FFMAX (int,double) ;
 double fabs (double) ;
 int* ff_zigzag_direct ;
 double* unscaled_chroma ;
 double* unscaled_luma ;

__attribute__((used)) static void compute_quant_matrix(AGMContext *s, double qscale)
{
    int luma[64], chroma[64];
    double f = 1.0 - fabs(qscale);

    if (!s->key_frame && (s->flags & 2)) {
        if (qscale >= 0.0) {
            for (int i = 0; i < 64; i++) {
                luma[i] = FFMAX(1, 16 * f);
                chroma[i] = FFMAX(1, 16 * f);
            }
        } else {
            for (int i = 0; i < 64; i++) {
                luma[i] = FFMAX(1, 16 - qscale * 32);
                chroma[i] = FFMAX(1, 16 - qscale * 32);
            }
        }
    } else {
        if (qscale >= 0.0) {
            for (int i = 0; i < 64; i++) {
                luma[i] = FFMAX(1, unscaled_luma [(i & 7) * 8 + (i >> 3)] * f);
                chroma[i] = FFMAX(1, unscaled_chroma[(i & 7) * 8 + (i >> 3)] * f);
            }
        } else {
            for (int i = 0; i < 64; i++) {
                luma[i] = FFMAX(1, 255.0 - (255 - unscaled_luma [(i & 7) * 8 + (i >> 3)]) * f);
                chroma[i] = FFMAX(1, 255.0 - (255 - unscaled_chroma[(i & 7) * 8 + (i >> 3)]) * f);
            }
        }
    }

    for (int i = 0; i < 64; i++) {
        int pos = ff_zigzag_direct[i];

        s->luma_quant_matrix[i] = luma[pos] * ((pos / 8) & 1 ? -1 : 1);
        s->chroma_quant_matrix[i] = chroma[pos] * ((pos / 8) & 1 ? -1 : 1);
    }
}
