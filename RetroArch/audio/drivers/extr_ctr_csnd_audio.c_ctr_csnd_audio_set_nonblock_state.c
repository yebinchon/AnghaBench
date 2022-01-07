
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nonblocking; } ;
typedef TYPE_1__ ctr_csnd_audio_t ;



__attribute__((used)) static void ctr_csnd_audio_set_nonblock_state(void *data, bool state)
{
   ctr_csnd_audio_t* ctr = (ctr_csnd_audio_t*)data;
   if (ctr)
      ctr->nonblocking = state;
}
