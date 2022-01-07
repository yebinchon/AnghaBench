
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* spx_word16_t ;
typedef size_t spx_uint32_t ;
typedef size_t spx_int32_t ;
struct TYPE_5__ {int oversample; size_t base_length; int downsample_bandwidth; int upsample_bandwidth; int window_func; } ;
struct TYPE_4__ {size_t filt_len; int oversample; size_t quality; int num_rate; int den_rate; int cutoff; int sinc_table_length; int int_advance; int frac_advance; int mem_alloc_size; int buffer_size; int nb_channels; int* magic_samples; size_t* last_sample; void** mem; int started; void* resampler_ptr; void** sinc_table; } ;
typedef TYPE_1__ SpeexResamplerState ;


 TYPE_3__* quality_map ;
 void* resampler_basic_direct_double ;
 void* resampler_basic_direct_single ;
 void* resampler_basic_interpolate_double ;
 void* resampler_basic_interpolate_single ;
 void* sinc (int,size_t,size_t,int ) ;
 scalar_t__ speex_alloc (int) ;
 scalar_t__ speex_realloc (void**,int) ;

__attribute__((used)) static void update_filter(SpeexResamplerState *st)
{
   spx_uint32_t old_length;

   old_length = st->filt_len;
   st->oversample = quality_map[st->quality].oversample;
   st->filt_len = quality_map[st->quality].base_length;

   if (st->num_rate > st->den_rate)
   {

      st->cutoff = quality_map[st->quality].downsample_bandwidth * st->den_rate / st->num_rate;

      st->filt_len = st->filt_len*st->num_rate / st->den_rate;

      st->filt_len &= (~0x3);
      if (2*st->den_rate < st->num_rate)
         st->oversample >>= 1;
      if (4*st->den_rate < st->num_rate)
         st->oversample >>= 1;
      if (8*st->den_rate < st->num_rate)
         st->oversample >>= 1;
      if (16*st->den_rate < st->num_rate)
         st->oversample >>= 1;
      if (st->oversample < 1)
         st->oversample = 1;
   } else {

      st->cutoff = quality_map[st->quality].upsample_bandwidth;
   }


   if (st->den_rate <= st->oversample)
   {
      spx_uint32_t i;
      if (!st->sinc_table)
         st->sinc_table = (spx_word16_t *)speex_alloc(st->filt_len*st->den_rate*sizeof(spx_word16_t));
      else if (st->sinc_table_length < st->filt_len*st->den_rate)
      {
         st->sinc_table = (spx_word16_t *)speex_realloc(st->sinc_table,st->filt_len*st->den_rate*sizeof(spx_word16_t));
         st->sinc_table_length = st->filt_len*st->den_rate;
      }
      for (i=0;i<st->den_rate;i++)
      {
         spx_int32_t j;
         for (j=0;j<st->filt_len;j++)
         {
            st->sinc_table[i*st->filt_len+j] = sinc(st->cutoff,((j-(spx_int32_t)st->filt_len/2+1)-((float)i)/st->den_rate), st->filt_len, quality_map[st->quality].window_func);
         }
      }



      if (st->quality>8)
         st->resampler_ptr = resampler_basic_direct_double;
      else
         st->resampler_ptr = resampler_basic_direct_single;


   } else {
      spx_int32_t i;
      if (!st->sinc_table)
         st->sinc_table = (spx_word16_t *)speex_alloc((st->filt_len*st->oversample+8)*sizeof(spx_word16_t));
      else if (st->sinc_table_length < st->filt_len*st->oversample+8)
      {
         st->sinc_table = (spx_word16_t *)speex_realloc(st->sinc_table,(st->filt_len*st->oversample+8)*sizeof(spx_word16_t));
         st->sinc_table_length = st->filt_len*st->oversample+8;
      }
      for (i=-4;i<(spx_int32_t)(st->oversample*st->filt_len+4);i++)
         st->sinc_table[i+4] = sinc(st->cutoff,(i/(float)st->oversample - st->filt_len/2), st->filt_len, quality_map[st->quality].window_func);



      if (st->quality>8)
         st->resampler_ptr = resampler_basic_interpolate_double;
      else
         st->resampler_ptr = resampler_basic_interpolate_single;


   }
   st->int_advance = st->num_rate/st->den_rate;
   st->frac_advance = st->num_rate%st->den_rate;





   if (!st->mem)
   {
      spx_uint32_t i;
      st->mem_alloc_size = st->filt_len-1 + st->buffer_size;
      st->mem = (spx_word16_t*)speex_alloc(st->nb_channels*st->mem_alloc_size * sizeof(spx_word16_t));
      for (i=0;i<st->nb_channels*st->mem_alloc_size;i++)
         st->mem[i] = 0;

   } else if (!st->started)
   {
      spx_uint32_t i;
      st->mem_alloc_size = st->filt_len-1 + st->buffer_size;
      st->mem = (spx_word16_t*)speex_realloc(st->mem, st->nb_channels*st->mem_alloc_size * sizeof(spx_word16_t));
      for (i=0;i<st->nb_channels*st->mem_alloc_size;i++)
         st->mem[i] = 0;

   } else if (st->filt_len > old_length)
   {
      spx_int32_t i;


      int old_alloc_size = st->mem_alloc_size;
      if ((st->filt_len-1 + st->buffer_size) > st->mem_alloc_size)
      {
         st->mem_alloc_size = st->filt_len-1 + st->buffer_size;
         st->mem = (spx_word16_t*)speex_realloc(st->mem, st->nb_channels*st->mem_alloc_size * sizeof(spx_word16_t));
      }
      for (i=st->nb_channels-1;i>=0;i--)
      {
         spx_int32_t j;
         spx_uint32_t olen = old_length;

         {



            olen = old_length + 2*st->magic_samples[i];
            for (j=old_length-2+st->magic_samples[i];j>=0;j--)
               st->mem[i*st->mem_alloc_size+j+st->magic_samples[i]] = st->mem[i*old_alloc_size+j];
            for (j=0;j<st->magic_samples[i];j++)
               st->mem[i*st->mem_alloc_size+j] = 0;
            st->magic_samples[i] = 0;
         }
         if (st->filt_len > olen)
         {


            for (j=0;j<olen-1;j++)
               st->mem[i*st->mem_alloc_size+(st->filt_len-2-j)] = st->mem[i*st->mem_alloc_size+(olen-2-j)];

            for (;j<st->filt_len-1;j++)
               st->mem[i*st->mem_alloc_size+(st->filt_len-2-j)] = 0;

            st->last_sample[i] += (st->filt_len - olen)/2;
         } else {

            st->magic_samples[i] = (olen - st->filt_len)/2;
            for (j=0;j<st->filt_len-1+st->magic_samples[i];j++)
               st->mem[i*st->mem_alloc_size+j] = st->mem[i*st->mem_alloc_size+j+st->magic_samples[i]];
         }
      }
   } else if (st->filt_len < old_length)
   {
      spx_uint32_t i;


      for (i=0;i<st->nb_channels;i++)
      {
         spx_uint32_t j;
         spx_uint32_t old_magic = st->magic_samples[i];
         st->magic_samples[i] = (old_length - st->filt_len)/2;


         for (j=0;j<st->filt_len-1+st->magic_samples[i]+old_magic;j++)
            st->mem[i*st->mem_alloc_size+j] = st->mem[i*st->mem_alloc_size+j+st->magic_samples[i]];
         st->magic_samples[i] += old_magic;
      }
   }

}
