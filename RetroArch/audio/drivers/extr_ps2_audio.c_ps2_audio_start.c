
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int running; } ;
typedef TYPE_1__ ps2_audio_t ;



__attribute__((used)) static bool ps2_audio_start(void *data, bool is_shutdown)
{
   ps2_audio_t* ps2 = (ps2_audio_t*)data;
   bool start = 1;

   if (ps2)
      ps2->running = 1;

   return start;
}
