
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nonblock; int pcm; } ;
typedef TYPE_1__ alsa_qsa_t ;


 int RARCH_ERR (char*,int,int ) ;
 int snd_pcm_nonblock_mode (int ,int) ;
 int snd_strerror (int) ;

__attribute__((used)) static void alsa_qsa_set_nonblock_state(void *data, bool state)
{
   alsa_qsa_t *alsa = (alsa_qsa_t*)data;

   int err;

   if((err = snd_pcm_nonblock_mode(alsa->pcm, state)) < 0)
   {
      RARCH_ERR("Can't set blocking mode to %d: %s\n", state,
            snd_strerror(err));
      return;
   }

   alsa->nonblock = state;
}
