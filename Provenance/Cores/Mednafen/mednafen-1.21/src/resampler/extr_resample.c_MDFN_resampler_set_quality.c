
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int quality; scalar_t__ initialised; } ;
typedef TYPE_1__ SpeexResamplerState ;


 int RESAMPLER_ERR_INVALID_ARG ;
 int RESAMPLER_ERR_SUCCESS ;
 int update_filter (TYPE_1__*) ;

int speex_resampler_set_quality(SpeexResamplerState *st, int quality)
{
   if (quality > 10 || quality < 0)
      return RESAMPLER_ERR_INVALID_ARG;
   if (st->quality == quality)
      return RESAMPLER_ERR_SUCCESS;
   st->quality = quality;
   if (st->initialised)
      update_filter(st);
   return RESAMPLER_ERR_SUCCESS;
}
