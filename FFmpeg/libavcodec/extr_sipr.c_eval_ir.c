
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LP_FILTER_ORDER ;
 int SUBFR_SIZE ;
 int ff_celp_lp_synthesis_filterf (float*,float*,float*,int ,int) ;
 float const* ff_pow_0_55 ;
 float const* ff_pow_0_7 ;
 int memset (float*,int ,int) ;
 int pitch_sharpening (int,float,float*) ;

__attribute__((used)) static void eval_ir(const float *Az, int pitch_lag, float *freq,
                    float pitch_sharp_factor)
{
    float tmp1[SUBFR_SIZE+1], tmp2[LP_FILTER_ORDER+1];
    int i;

    tmp1[0] = 1.0;
    for (i = 0; i < LP_FILTER_ORDER; i++) {
        tmp1[i+1] = Az[i] * ff_pow_0_55[i];
        tmp2[i ] = Az[i] * ff_pow_0_7 [i];
    }
    memset(tmp1 + 11, 0, 37 * sizeof(float));

    ff_celp_lp_synthesis_filterf(freq, tmp2, tmp1, SUBFR_SIZE,
                                 LP_FILTER_ORDER);

    pitch_sharpening(pitch_lag, pitch_sharp_factor, freq);
}
