
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data_pcm16; } ;
struct TYPE_5__ {TYPE_1__ dsp_buf; int channel; } ;
typedef TYPE_2__ ctr_dsp_audio_t ;


 int free (TYPE_2__*) ;
 int linearFree (int ) ;
 int ndspChnWaveBufClear (int ) ;
 int ndspExit () ;

__attribute__((used)) static void ctr_dsp_audio_free(void *data)
{
   ctr_dsp_audio_t* ctr = (ctr_dsp_audio_t*)data;
   ndspChnWaveBufClear(ctr->channel);
   linearFree(ctr->dsp_buf.data_pcm16);
   free(ctr);
   ndspExit();
}
