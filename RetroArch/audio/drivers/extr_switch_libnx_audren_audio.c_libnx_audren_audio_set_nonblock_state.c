
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nonblocking; } ;
typedef TYPE_1__ libnx_audren_t ;



__attribute__((used)) static void libnx_audren_audio_set_nonblock_state(void *data, bool state)
{
   libnx_audren_t *aud = (libnx_audren_t*)data;

   if (!aud)
      return;

   aud->nonblocking = state;
}
