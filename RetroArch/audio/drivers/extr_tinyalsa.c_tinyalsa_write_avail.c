
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t buffer_size; int frame_bits; int pcm; } ;
typedef TYPE_1__ tinyalsa_t ;
typedef scalar_t__ snd_pcm_sframes_t ;


 size_t FRAMES_TO_BYTES (scalar_t__,int ) ;
 scalar_t__ pcm_avail_update (int ) ;

__attribute__((used)) static size_t tinyalsa_write_avail(void *data)
{
   tinyalsa_t *alsa = (tinyalsa_t*)data;
   snd_pcm_sframes_t avail = pcm_avail_update(alsa->pcm);

   if (avail < 0)
      return alsa->buffer_size;

   return FRAMES_TO_BYTES(avail, alsa->frame_bits);
}
