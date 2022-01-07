
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int coef0_pos; } ;
typedef TYPE_1__ IMCContext ;


 int BANDS ;
 float log2f (float) ;
 double pow (int,int) ;
 float powf (double,int) ;

__attribute__((used)) static void imc_decode_level_coefficients_raw(IMCContext *q, int *levlCoeffBuf,
                                              float *flcoeffs1, float *flcoeffs2)
{
    int i, level, pos;
    float tmp, tmp2;

    pos = q->coef0_pos;
    flcoeffs1[pos] = 20000.0 / pow (2, levlCoeffBuf[0] * 0.18945);
    flcoeffs2[pos] = log2f(flcoeffs1[pos]);
    tmp = flcoeffs1[pos];
    tmp2 = flcoeffs2[pos];

    levlCoeffBuf++;
    for (i = 0; i < BANDS; i++) {
        if (i == pos)
            continue;
        level = *levlCoeffBuf++;
        flcoeffs1[i] = tmp * powf(10.0, -level * 0.4375);
        flcoeffs2[i] = tmp2 - 1.4533435415 * level;
    }
}
