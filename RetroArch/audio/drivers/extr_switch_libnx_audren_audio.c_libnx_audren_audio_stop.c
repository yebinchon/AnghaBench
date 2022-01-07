
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int drv; } ;
typedef TYPE_1__ libnx_audren_t ;


 int audrvVoiceStop (int *,int ) ;

__attribute__((used)) static bool libnx_audren_audio_stop(void *data)
{
   libnx_audren_t *aud = (libnx_audren_t*)data;

   if (!aud)
      return 0;

   audrvVoiceStop(&aud->drv, 0);

   return 1;
}
