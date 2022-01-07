
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef float uint16_t ;
struct TYPE_4__ {float (* dot_productf ) (float const*,float const*,int ) ;} ;
struct TYPE_5__ {int prng; TYPE_1__ celpm_ctx; } ;
typedef TYPE_2__ AMRWBContext ;


 int AMRWB_SFR_SIZE ;
 int AMRWB_SFR_SIZE_16k ;
 scalar_t__ av_lfg_get (int *) ;
 int ff_scale_vector_to_given_sum_of_squares (float*,float*,float,int) ;
 float stub1 (float const*,float const*,int ) ;

__attribute__((used)) static void scaled_hb_excitation(AMRWBContext *ctx, float *hb_exc,
                                 const float *synth_exc, float hb_gain)
{
    int i;
    float energy = ctx->celpm_ctx.dot_productf(synth_exc, synth_exc,
                                                AMRWB_SFR_SIZE);


    for (i = 0; i < AMRWB_SFR_SIZE_16k; i++)
        hb_exc[i] = 32768.0 - (uint16_t) av_lfg_get(&ctx->prng);

    ff_scale_vector_to_given_sum_of_squares(hb_exc, hb_exc,
                                            energy * hb_gain * hb_gain,
                                            AMRWB_SFR_SIZE_16k);
}
