
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IMCContext ;


 int BANDS ;
 float* imc_exp_tab2 ;

__attribute__((used)) static void imc_decode_level_coefficients2(IMCContext *q, int *levlCoeffBuf,
                                           float *old_floor, float *flcoeffs1,
                                           float *flcoeffs2)
{
    int i;




    for (i = 0; i < BANDS; i++) {
        flcoeffs1[i] = 0;
        if (levlCoeffBuf[i] < 16) {
            flcoeffs1[i] = imc_exp_tab2[levlCoeffBuf[i]] * old_floor[i];
            flcoeffs2[i] = (levlCoeffBuf[i] - 7) * 0.83048 + flcoeffs2[i];
        } else {
            flcoeffs1[i] = old_floor[i];
        }
    }
}
