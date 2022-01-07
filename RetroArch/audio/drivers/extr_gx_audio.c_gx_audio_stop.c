
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int is_paused; int data; } ;
typedef TYPE_1__ gx_audio_t ;


 int AIStopDMA () ;
 int DCFlushRange (int ,int) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static bool gx_audio_stop(void *data)
{
   gx_audio_t *wa = (gx_audio_t*)data;

   if (!wa)
      return 0;

   AIStopDMA();
   memset(wa->data, 0, sizeof(wa->data));
   DCFlushRange(wa->data, sizeof(wa->data));
   wa->is_paused = 1;
   return 1;
}
