
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* buffer_chunk; struct TYPE_3__* buffer; int * pcm; } ;
typedef TYPE_1__ alsa_qsa_t ;


 int free (TYPE_1__*) ;
 int snd_pcm_close (int *) ;

__attribute__((used)) static void alsa_qsa_free(void *data)
{
   alsa_qsa_t *alsa = (alsa_qsa_t*)data;

   if (alsa)
   {
      if (alsa->pcm)
      {
         snd_pcm_close(alsa->pcm);
         alsa->pcm = ((void*)0);
      }
      free(alsa->buffer);
      free(alsa->buffer_chunk);
      free(alsa);
   }
}
