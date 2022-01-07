
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int is_paused; int pcm; scalar_t__ can_pause; } ;
typedef TYPE_1__ alsa_t ;


 int RARCH_ERR (char*,int ) ;
 int snd_pcm_pause (int ,int ) ;
 int snd_strerror (int) ;

__attribute__((used)) static bool alsa_start(void *data, bool is_shutdown)
{
   alsa_t *alsa = (alsa_t*)data;
   if (!alsa->is_paused)
   return 1;

   if (alsa->can_pause
         && alsa->is_paused)
   {
      int ret = snd_pcm_pause(alsa->pcm, 0);

      if (ret < 0)
      {
         RARCH_ERR("[ALSA]: Failed to unpause: %s.\n",
               snd_strerror(ret));
         return 0;
      }

      alsa->is_paused = 0;
   }
   return 1;
}
