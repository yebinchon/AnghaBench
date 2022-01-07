
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t CTR_DSP_AUDIO_COUNT ;

__attribute__((used)) static size_t ctr_dsp_audio_buffer_size(void *data)
{
   (void)data;
   return CTR_DSP_AUDIO_COUNT;
}
