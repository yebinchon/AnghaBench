
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int running; } ;
typedef TYPE_1__ ps2_audio_t ;


 int audsrv_stop_audio () ;

__attribute__((used)) static bool ps2_audio_stop(void *data)
{
   bool stop = 1;
   ps2_audio_t* ps2 = (ps2_audio_t*)data;

   if (ps2)
   {
      audsrv_stop_audio();
      ps2->running = 0;
   }

   return stop;
}
