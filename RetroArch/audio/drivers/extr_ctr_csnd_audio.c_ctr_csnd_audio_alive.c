
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int playing; } ;
typedef TYPE_1__ ctr_csnd_audio_t ;



__attribute__((used)) static bool ctr_csnd_audio_alive(void *data)
{
   ctr_csnd_audio_t* ctr = (ctr_csnd_audio_t*)data;
   return ctr->playing;
}
