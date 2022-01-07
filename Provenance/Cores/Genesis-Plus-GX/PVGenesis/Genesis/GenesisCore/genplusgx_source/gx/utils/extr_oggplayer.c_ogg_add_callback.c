
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flag; int pcm_indx; size_t pcmout_pos; scalar_t__* pcmout; } ;


 scalar_t__ ASND_AddVoice (int ,void*,int) ;
 int ASND_StopVoice (int ) ;
 int LWP_ThreadSignal (int ) ;
 int READ_SAMPLES ;
 int ogg_thread_running ;
 int oggplayer_queue ;
 TYPE_1__ private_ogg ;

__attribute__((used)) static void ogg_add_callback(int voice)
{
  if (!ogg_thread_running)
  {
    ASND_StopVoice(0);
    return;
  }

  if (private_ogg.flag & 128)
    return;

  if (private_ogg.pcm_indx >= READ_SAMPLES)
  {
    if (ASND_AddVoice(0,
        (void *) private_ogg.pcmout[private_ogg.pcmout_pos],
        private_ogg.pcm_indx << 1) == 0)
    {
      private_ogg.pcmout_pos ^= 1;
      private_ogg.pcm_indx = 0;
      private_ogg.flag = 0;
      LWP_ThreadSignal(oggplayer_queue);
    }
  }
  else
  {
    if (private_ogg.flag & 64)
    {
      private_ogg.flag &= ~64;
      LWP_ThreadSignal(oggplayer_queue);
    }
  }
}
