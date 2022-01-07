
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * samples_hb; int * samples_up; int * samples_az; int * fixed_gain; int * pitch_gain; int * excitation_buf; } ;
typedef TYPE_1__ AMRWBContext ;


 int AMRWB_P_DELAY_MAX ;
 size_t AMRWB_SFR_SIZE ;
 size_t AMRWB_SFR_SIZE_16k ;
 int LP_ORDER ;
 int LP_ORDER_16k ;
 int UPS_MEM_SIZE ;
 int memmove (int *,int *,int) ;

__attribute__((used)) static void update_sub_state(AMRWBContext *ctx)
{
    memmove(&ctx->excitation_buf[0], &ctx->excitation_buf[AMRWB_SFR_SIZE],
            (AMRWB_P_DELAY_MAX + LP_ORDER + 1) * sizeof(float));

    memmove(&ctx->pitch_gain[1], &ctx->pitch_gain[0], 5 * sizeof(float));
    memmove(&ctx->fixed_gain[1], &ctx->fixed_gain[0], 1 * sizeof(float));

    memmove(&ctx->samples_az[0], &ctx->samples_az[AMRWB_SFR_SIZE],
            LP_ORDER * sizeof(float));
    memmove(&ctx->samples_up[0], &ctx->samples_up[AMRWB_SFR_SIZE],
            UPS_MEM_SIZE * sizeof(float));
    memmove(&ctx->samples_hb[0], &ctx->samples_hb[AMRWB_SFR_SIZE_16k],
            LP_ORDER_16k * sizeof(float));
}
