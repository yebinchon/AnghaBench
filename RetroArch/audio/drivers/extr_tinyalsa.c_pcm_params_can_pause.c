
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_hw_params {int info; } ;
struct pcm_params {int dummy; } ;


 int SNDRV_PCM_INFO_PAUSE ;

__attribute__((used)) static int pcm_params_can_pause(const struct pcm_params *pcm_params)
{
   const struct snd_pcm_hw_params *params = (const struct snd_pcm_hw_params *)pcm_params;

   if (!params)
      return 0;

   return (params->info & SNDRV_PCM_INFO_PAUSE) ? 1 : 0;
}
