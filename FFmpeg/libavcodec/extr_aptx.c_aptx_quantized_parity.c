
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_5__ {int dither_parity; TYPE_1__* quantize; } ;
struct TYPE_4__ {int quantized_sample; } ;
typedef TYPE_2__ Channel ;


 int NB_SUBBANDS ;

__attribute__((used)) static int32_t aptx_quantized_parity(Channel *channel)
{
    int32_t parity = channel->dither_parity;
    int subband;

    for (subband = 0; subband < NB_SUBBANDS; subband++)
        parity ^= channel->quantize[subband].quantized_sample;

    return parity & 1;
}
