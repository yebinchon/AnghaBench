
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int is_paused; } ;
typedef TYPE_1__ gx_audio_t ;


 int AIStartDMA () ;

__attribute__((used)) static bool gx_audio_start(void *data, bool is_shutdown)
{
   gx_audio_t *wa = (gx_audio_t*)data;

   if (!wa)
      return 0;

   AIStartDMA();
   wa->is_paused = 0;
   return 1;
}
