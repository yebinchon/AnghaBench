
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int filt_len; int den_rate; int num_rate; } ;
typedef TYPE_1__ SpeexResamplerState ;



int speex_resampler_get_output_latency(SpeexResamplerState *st)
{
  return ((st->filt_len / 2) * st->den_rate + (st->num_rate >> 1)) / st->num_rate;
}
