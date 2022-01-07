
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nonblock; } ;
typedef TYPE_1__ gx_audio_t ;



__attribute__((used)) static void gx_audio_set_nonblock_state(void *data, bool state)
{
   gx_audio_t *wa = (gx_audio_t*)data;

   if (wa)
      wa->nonblock = state;
}
