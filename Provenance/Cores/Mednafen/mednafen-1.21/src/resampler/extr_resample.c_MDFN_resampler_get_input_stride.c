
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int spx_uint32_t ;
struct TYPE_3__ {int in_stride; } ;
typedef TYPE_1__ SpeexResamplerState ;



void speex_resampler_get_input_stride(SpeexResamplerState *st, spx_uint32_t *stride)
{
   *stride = st->in_stride;
}
