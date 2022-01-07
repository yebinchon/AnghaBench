
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int filt_len; } ;
typedef TYPE_1__ SpeexResamplerState ;



int speex_resampler_get_input_latency(SpeexResamplerState *st)
{
  return st->filt_len / 2;
}
