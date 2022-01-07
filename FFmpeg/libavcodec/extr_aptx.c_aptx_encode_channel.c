
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_8__ {TYPE_2__* invert_quantize; int * dither; int * quantize; TYPE_1__* prediction; int qmf; } ;
struct TYPE_7__ {int quantization_factor; } ;
struct TYPE_6__ {scalar_t__ predicted_sample; } ;
typedef TYPE_3__ Channel ;


 int NB_SUBBANDS ;
 int aptx_generate_dither (TYPE_3__*) ;
 int aptx_qmf_tree_analysis (int *,scalar_t__*,scalar_t__*) ;
 int aptx_quantize_difference (int *,scalar_t__,int ,int ,int *) ;
 scalar_t__ av_clip_intp2 (scalar_t__,int) ;
 int ** tables ;

__attribute__((used)) static void aptx_encode_channel(Channel *channel, int32_t samples[4], int hd)
{
    int32_t subband_samples[4];
    int subband;
    aptx_qmf_tree_analysis(&channel->qmf, samples, subband_samples);
    aptx_generate_dither(channel);
    for (subband = 0; subband < NB_SUBBANDS; subband++) {
        int32_t diff = av_clip_intp2(subband_samples[subband] - channel->prediction[subband].predicted_sample, 23);
        aptx_quantize_difference(&channel->quantize[subband], diff,
                                 channel->dither[subband],
                                 channel->invert_quantize[subband].quantization_factor,
                                 &tables[hd][subband]);
    }
}
