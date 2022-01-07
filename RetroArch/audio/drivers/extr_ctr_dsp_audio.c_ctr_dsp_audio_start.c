
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int playing; } ;
typedef TYPE_1__ ctr_dsp_audio_t ;


 int ndspSetMasterVol (double) ;

__attribute__((used)) static bool ctr_dsp_audio_start(void *data, bool is_shutdown)
{
   ctr_dsp_audio_t* ctr = (ctr_dsp_audio_t*)data;



   if (is_shutdown)
      return 1;

   ndspSetMasterVol(1.0);
   ctr->playing = 1;

   return 1;
}
