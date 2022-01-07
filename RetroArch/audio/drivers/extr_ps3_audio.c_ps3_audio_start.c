
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int started; int audio_port; } ;
typedef TYPE_1__ ps3_audio_t ;


 int cellAudioPortStart (int ) ;

__attribute__((used)) static bool ps3_audio_start(void *data, bool is_shutdown)
{
   ps3_audio_t *aud = data;
   if (!aud->started)
   {
      cellAudioPortStart(aud->audio_port);
      aud->started = 1;
   }
   return 1;
}
