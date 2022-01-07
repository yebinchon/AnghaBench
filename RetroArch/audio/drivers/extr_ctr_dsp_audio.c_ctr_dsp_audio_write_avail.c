
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t pos; int channel; } ;
typedef TYPE_1__ ctr_dsp_audio_t ;


 size_t CTR_DSP_AUDIO_COUNT_MASK ;
 size_t ndspChnGetSamplePos (int ) ;

__attribute__((used)) static size_t ctr_dsp_audio_write_avail(void *data)
{
   ctr_dsp_audio_t* ctr = (ctr_dsp_audio_t*)data;

   return (ndspChnGetSamplePos(ctr->channel) - ctr->pos) & CTR_DSP_AUDIO_COUNT_MASK;
}
