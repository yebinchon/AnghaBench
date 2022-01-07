
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int quality; } ;
typedef TYPE_1__ SpeexResamplerState ;



void speex_resampler_get_quality(SpeexResamplerState *st, int *quality)
{
   *quality = st->quality;
}
