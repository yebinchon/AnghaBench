
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int running; } ;
typedef TYPE_1__ ps2_audio_t ;


 int audsrv_stop_audio () ;
 int free (TYPE_1__*) ;

__attribute__((used)) static void ps2_audio_free(void *data)
{
   ps2_audio_t* ps2 = (ps2_audio_t*)data;
   if (!ps2)
      return;

   ps2->running = 0;
   audsrv_stop_audio();
   free(ps2);
}
