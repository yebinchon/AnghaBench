
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * dither; TYPE_1__* quantize; int * prediction; int * invert_quantize; } ;
struct TYPE_4__ {int quantized_sample; } ;
typedef TYPE_2__ Channel ;


 int NB_SUBBANDS ;
 int aptx_process_subband (int *,int *,int ,int ,int *) ;
 int ** tables ;

__attribute__((used)) static void aptx_invert_quantize_and_prediction(Channel *channel, int hd)
{
    int subband;
    for (subband = 0; subband < NB_SUBBANDS; subband++)
        aptx_process_subband(&channel->invert_quantize[subband],
                             &channel->prediction[subband],
                             channel->quantize[subband].quantized_sample,
                             channel->dither[subband],
                             &tables[hd][subband]);
}
