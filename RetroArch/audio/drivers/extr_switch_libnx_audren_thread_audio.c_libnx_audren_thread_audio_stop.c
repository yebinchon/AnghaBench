
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int paused; } ;
typedef TYPE_1__ libnx_audren_thread_t ;



__attribute__((used)) static bool libnx_audren_thread_audio_stop(void *data)
{
   libnx_audren_thread_t *aud = (libnx_audren_thread_t*)data;

   if (!aud)
      return 0;

   aud->paused = 1;

   return 1;
}
