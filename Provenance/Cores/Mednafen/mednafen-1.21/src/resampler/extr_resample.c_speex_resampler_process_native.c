
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int spx_word16_t ;
typedef int spx_uint32_t ;
typedef scalar_t__ spx_int32_t ;
struct TYPE_4__ {int filt_len; int mem_alloc_size; int started; int (* resampler_ptr ) (TYPE_1__*,int,int *,int*,int *,int*) ;scalar_t__* last_sample; int * mem; } ;
typedef TYPE_1__ SpeexResamplerState ;


 int RESAMPLER_ERR_SUCCESS ;
 int stub1 (TYPE_1__*,int,int *,int*,int *,int*) ;

__attribute__((used)) static int speex_resampler_process_native(SpeexResamplerState *st, spx_uint32_t channel_index, spx_uint32_t *in_len, spx_word16_t *out, spx_uint32_t *out_len)
{
   int j=0;
   const int N = st->filt_len;
   int out_sample = 0;
   spx_word16_t *mem = st->mem + channel_index * st->mem_alloc_size;
   spx_uint32_t ilen;

   st->started = 1;


   out_sample = st->resampler_ptr(st, channel_index, mem, in_len, out, out_len);

   if (st->last_sample[channel_index] < (spx_int32_t)*in_len)
      *in_len = st->last_sample[channel_index];
   *out_len = out_sample;
   st->last_sample[channel_index] -= *in_len;

   ilen = *in_len;

   for(j=0;j<N-1;++j)
     mem[j] = mem[j+ilen];

   return RESAMPLER_ERR_SUCCESS;
}
