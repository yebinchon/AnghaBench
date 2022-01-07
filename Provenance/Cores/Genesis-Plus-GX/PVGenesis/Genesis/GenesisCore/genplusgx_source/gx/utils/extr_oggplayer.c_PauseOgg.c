
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flag; } ;


 int LWP_ThreadSignal (int ) ;
 scalar_t__ ogg_thread_running ;
 int oggplayer_queue ;
 TYPE_1__ private_ogg ;

void PauseOgg(int pause)
{
  if (pause)
  {
    private_ogg.flag |= 128;
  }
  else
  {
    if (private_ogg.flag & 128)
    {
      private_ogg.flag |= 64;
      private_ogg.flag &= ~128;
      if (ogg_thread_running > 0)
      {
        LWP_ThreadSignal(oggplayer_queue);
      }
    }
  }
}
