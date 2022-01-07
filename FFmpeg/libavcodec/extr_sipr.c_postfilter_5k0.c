
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float* postfilter_mem; float* postfilter_mem5k0; int tilt_mem; } ;
typedef TYPE_1__ SiprContext ;


 int LP_FILTER_ORDER ;
 int SUBFR_SIZE ;
 int ff_celp_lp_synthesis_filterf (float*,float*,float*,int,int) ;
 int ff_celp_lp_zero_synthesis_filterf (float*,float*,float*,int,int) ;
 float const* ff_pow_0_5 ;
 float const* ff_pow_0_75 ;
 int ff_tilt_compensation (int *,double,float*,int) ;
 int memcpy (float*,float*,int) ;

__attribute__((used)) static void postfilter_5k0(SiprContext *ctx, const float *lpc, float *samples)
{
    float buf[SUBFR_SIZE + LP_FILTER_ORDER];
    float *pole_out = buf + LP_FILTER_ORDER;
    float lpc_n[LP_FILTER_ORDER];
    float lpc_d[LP_FILTER_ORDER];
    int i;

    for (i = 0; i < LP_FILTER_ORDER; i++) {
        lpc_d[i] = lpc[i] * ff_pow_0_75[i];
        lpc_n[i] = lpc[i] * ff_pow_0_5 [i];
    };

    memcpy(pole_out - LP_FILTER_ORDER, ctx->postfilter_mem,
           LP_FILTER_ORDER*sizeof(float));

    ff_celp_lp_synthesis_filterf(pole_out, lpc_d, samples, SUBFR_SIZE,
                                 LP_FILTER_ORDER);

    memcpy(ctx->postfilter_mem, pole_out + SUBFR_SIZE - LP_FILTER_ORDER,
           LP_FILTER_ORDER*sizeof(float));

    ff_tilt_compensation(&ctx->tilt_mem, 0.4, pole_out, SUBFR_SIZE);

    memcpy(pole_out - LP_FILTER_ORDER, ctx->postfilter_mem5k0,
           LP_FILTER_ORDER*sizeof(*pole_out));

    memcpy(ctx->postfilter_mem5k0, pole_out + SUBFR_SIZE - LP_FILTER_ORDER,
           LP_FILTER_ORDER*sizeof(*pole_out));

    ff_celp_lp_zero_synthesis_filterf(samples, lpc_n, pole_out, SUBFR_SIZE,
                                      LP_FILTER_ORDER);

}
