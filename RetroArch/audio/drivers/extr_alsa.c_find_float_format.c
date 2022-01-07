
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int snd_pcm_t ;
typedef int snd_pcm_hw_params_t ;


 int RARCH_LOG (char*) ;
 int SND_PCM_FORMAT_FLOAT ;
 scalar_t__ snd_pcm_hw_params_test_format (int *,int *,int ) ;

__attribute__((used)) static bool find_float_format(snd_pcm_t *pcm, void *data)
{
   snd_pcm_hw_params_t *params = (snd_pcm_hw_params_t*)data;

   if (snd_pcm_hw_params_test_format(pcm, params, SND_PCM_FORMAT_FLOAT) == 0)
   {
      RARCH_LOG("[ALSA]: Using floating point format.\n");
      return 1;
   }

   RARCH_LOG("[ALSA]: Using signed 16-bit format.\n");
   return 0;
}
