
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t resample_len; TYPE_1__* rwav; scalar_t__ resample; } ;
typedef TYPE_2__ audio_chunk_t ;
struct TYPE_4__ {size_t numsamples; } ;



size_t audio_mix_get_chunk_num_samples(audio_chunk_t *chunk)
{
   if (!chunk)
      return 0;

   if (chunk->rwav)
   {
      if (chunk->resample)
         return chunk->resample_len;
      return chunk->rwav->numsamples;
   }


   return 0;
}
