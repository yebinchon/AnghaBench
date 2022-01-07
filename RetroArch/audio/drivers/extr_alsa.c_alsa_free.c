
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pcm; } ;
typedef TYPE_1__ alsa_t ;


 int free (TYPE_1__*) ;
 int snd_config_update_free_global () ;
 int snd_pcm_close (scalar_t__) ;
 int snd_pcm_drop (scalar_t__) ;

__attribute__((used)) static void alsa_free(void *data)
{
   alsa_t *alsa = (alsa_t*)data;

   if (alsa)
   {
      if (alsa->pcm)
      {
         snd_pcm_drop(alsa->pcm);
         snd_pcm_close(alsa->pcm);
         snd_config_update_free_global();
      }

      free(alsa);
   }
}
