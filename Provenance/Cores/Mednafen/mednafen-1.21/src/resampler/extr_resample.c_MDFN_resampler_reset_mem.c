
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int spx_uint32_t ;
struct TYPE_3__ {int nb_channels; int filt_len; scalar_t__* mem; } ;
typedef TYPE_1__ SpeexResamplerState ;


 int RESAMPLER_ERR_SUCCESS ;

int speex_resampler_reset_mem(SpeexResamplerState *st)
{
   spx_uint32_t i;
   for (i=0;i<st->nb_channels*(st->filt_len-1);i++)
      st->mem[i] = 0;
   return RESAMPLER_ERR_SUCCESS;
}
