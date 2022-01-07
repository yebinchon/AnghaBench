
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ int16_t ;
struct TYPE_5__ {TYPE_1__* rwav; scalar_t__ upsample_buf; scalar_t__ resample_buf; scalar_t__ resample; } ;
typedef TYPE_2__ audio_chunk_t ;
struct TYPE_4__ {int bitspersample; int numchannels; } ;



int16_t audio_mix_get_chunk_sample(audio_chunk_t *chunk, unsigned channel, size_t index)
{
   if (!chunk)
      return 0;

   if (chunk->rwav)
   {
      int sample_size = chunk->rwav->bitspersample / 8;
      int16_t sample_out = 0;


      uint8_t *sample = ((void*)0);

      if (chunk->resample)
         sample = (uint8_t*)chunk->resample_buf +
            (sample_size * index * chunk->rwav->numchannels) + (channel * sample_size);
      else
         sample = (uint8_t*)chunk->upsample_buf +
            (sample_size * index * chunk->rwav->numchannels) + (channel * sample_size);

      sample_out = (int16_t)*sample;

      return sample_out;
   }


   return 0;
}
