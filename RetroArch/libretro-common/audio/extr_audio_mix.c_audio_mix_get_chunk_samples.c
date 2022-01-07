
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int16_t ;
struct TYPE_3__ {int * upsample_buf; int * resample_buf; scalar_t__ resample; scalar_t__ rwav; } ;
typedef TYPE_1__ audio_chunk_t ;



int16_t* audio_mix_get_chunk_samples(audio_chunk_t *chunk)
{
   if (!chunk)
      return 0;

   if (chunk->rwav)
   {
      int16_t *sample;

      if (chunk->resample)
         sample = chunk->resample_buf;
      else
         sample = chunk->upsample_buf;

      return sample;
   }

   return ((void*)0);
}
