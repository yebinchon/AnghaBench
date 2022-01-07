
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* rwav; } ;
typedef TYPE_2__ audio_chunk_t ;
struct TYPE_4__ {int numchannels; } ;



int audio_mix_get_chunk_num_channels(audio_chunk_t *chunk)
{
   if (!chunk)
      return 0;

   if (chunk->rwav)
      return chunk->rwav->numchannels;


   return 0;
}
