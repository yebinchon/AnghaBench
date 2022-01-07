
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int output; TYPE_1__* buffers; int is_paused; } ;
typedef TYPE_2__ switch_audio_t ;
struct TYPE_4__ {TYPE_2__* buffer; } ;


 int BUFFER_COUNT ;
 int audio_ipc_finalize () ;
 int audio_ipc_output_close (int *) ;
 int audoutExit () ;
 int audoutStopAudioOut () ;
 int free (TYPE_2__*) ;

__attribute__((used)) static void switch_audio_free(void *data)
{
   switch_audio_t *swa = (switch_audio_t*) data;

   if (!swa)
      return;
   audio_ipc_output_close(&swa->output);
   audio_ipc_finalize();

   free(swa);
}
