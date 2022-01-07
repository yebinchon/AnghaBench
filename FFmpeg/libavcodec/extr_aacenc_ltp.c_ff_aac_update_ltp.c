
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {float** planar_samples; size_t cur_channel; scalar_t__ profile; } ;
struct TYPE_6__ {int ltp; } ;
struct TYPE_7__ {float* ltp_state; TYPE_1__ ics; } ;
typedef TYPE_2__ SingleChannelElement ;
typedef TYPE_3__ AACEncContext ;


 scalar_t__ FF_PROFILE_AAC_LTP ;
 int generate_samples (float*,int *) ;
 int get_lag (float*,float const*,int *) ;

void ff_aac_update_ltp(AACEncContext *s, SingleChannelElement *sce)
{
    float *pred_signal = &sce->ltp_state[0];
    const float *samples = &s->planar_samples[s->cur_channel][1024];

    if (s->profile != FF_PROFILE_AAC_LTP)
        return;


    get_lag(pred_signal, samples, &sce->ics.ltp);
    generate_samples(pred_signal, &sce->ics.ltp);
}
