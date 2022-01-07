
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int spx_uint32_t ;
struct TYPE_3__ {int out_rate; int in_rate; } ;
typedef TYPE_1__ SpeexResamplerState ;



void speex_resampler_get_rate(SpeexResamplerState *st, spx_uint32_t *in_rate, spx_uint32_t *out_rate)
{
   *in_rate = st->in_rate;
   *out_rate = st->out_rate;
}
