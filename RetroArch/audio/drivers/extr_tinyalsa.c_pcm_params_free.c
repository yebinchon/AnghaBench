
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_hw_params {int dummy; } ;
struct pcm_params {int dummy; } ;


 int free (struct snd_pcm_hw_params*) ;

__attribute__((used)) static void pcm_params_free(struct pcm_params *pcm_params)
{
   struct snd_pcm_hw_params *params = (struct snd_pcm_hw_params *)pcm_params;

   if (params)
      free(params);
}
