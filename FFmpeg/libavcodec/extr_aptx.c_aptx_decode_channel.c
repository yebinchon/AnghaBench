
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_5__ {int qmf; TYPE_1__* prediction; } ;
struct TYPE_4__ {int previous_reconstructed_sample; } ;
typedef TYPE_2__ Channel ;


 int NB_SUBBANDS ;
 int aptx_qmf_tree_synthesis (int *,int *,int *) ;

__attribute__((used)) static void aptx_decode_channel(Channel *channel, int32_t samples[4])
{
    int32_t subband_samples[4];
    int subband;
    for (subband = 0; subband < NB_SUBBANDS; subband++)
        subband_samples[subband] = channel->prediction[subband].previous_reconstructed_sample;
    aptx_qmf_tree_synthesis(&channel->qmf, subband_samples, samples);
}
