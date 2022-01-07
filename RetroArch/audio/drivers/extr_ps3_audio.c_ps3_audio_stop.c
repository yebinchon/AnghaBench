
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int started; int audio_port; } ;
typedef TYPE_1__ ps3_audio_t ;


 int cellAudioPortStop (int ) ;

__attribute__((used)) static bool ps3_audio_stop(void *data)
{
   ps3_audio_t *aud = data;
   if (aud->started)
   {
      cellAudioPortStop(aud->audio_port);
      aud->started = 0;
   }
   return 1;
}
