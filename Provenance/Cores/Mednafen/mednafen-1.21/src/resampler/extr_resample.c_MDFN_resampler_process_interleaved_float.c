
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ spx_uint32_t ;
struct TYPE_4__ {int in_stride; int out_stride; int nb_channels; } ;
typedef TYPE_1__ SpeexResamplerState ;


 int RESAMPLER_ERR_SUCCESS ;
 int speex_resampler_process_float (TYPE_1__*,scalar_t__,float const*,scalar_t__*,float*,scalar_t__*) ;

int speex_resampler_process_interleaved_float(SpeexResamplerState *st, const float *in, spx_uint32_t *in_len, float *out, spx_uint32_t *out_len)
{
   spx_uint32_t i;
   int istride_save, ostride_save;
   spx_uint32_t bak_len = *out_len;
   istride_save = st->in_stride;
   ostride_save = st->out_stride;
   st->in_stride = st->out_stride = st->nb_channels;
   for (i=0;i<st->nb_channels;i++)
   {
      *out_len = bak_len;
      if (in != ((void*)0))
         speex_resampler_process_float(st, i, in+i, in_len, out+i, out_len);
      else
         speex_resampler_process_float(st, i, ((void*)0), in_len, out+i, out_len);
   }
   st->in_stride = istride_save;
   st->out_stride = ostride_save;
   return RESAMPLER_ERR_SUCCESS;
}
