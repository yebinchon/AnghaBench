
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float tilt_coef; int pitch_lag_int; } ;
typedef TYPE_1__ AMRWBContext ;


 int AMRWB_SFR_SIZE ;

__attribute__((used)) static void pitch_sharpening(AMRWBContext *ctx, float *fixed_vector)
{
    int i;


    for (i = AMRWB_SFR_SIZE - 1; i != 0; i--)
        fixed_vector[i] -= fixed_vector[i - 1] * ctx->tilt_coef;


    for (i = ctx->pitch_lag_int; i < AMRWB_SFR_SIZE; i++)
        fixed_vector[i] += fixed_vector[i - ctx->pitch_lag_int] * 0.85;
}
