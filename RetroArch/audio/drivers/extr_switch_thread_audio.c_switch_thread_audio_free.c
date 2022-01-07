
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int running; TYPE_4__* buffers; int * fifo; int thread; } ;
typedef TYPE_1__ switch_thread_audio_t ;
struct TYPE_6__ {int sample_data; TYPE_1__* buffer; } ;


 unsigned int ARRAY_SIZE (TYPE_4__*) ;
 int compat_thread_close (int *) ;
 int compat_thread_join (int *) ;
 int fifo_free (int *) ;
 int free (TYPE_1__*) ;
 int free_pages (int ) ;
 int switch_audio_ipc_finalize () ;
 int switch_audio_ipc_output_stop (TYPE_1__*) ;

__attribute__((used)) static void switch_thread_audio_free(void *data)
{
   unsigned i;
   switch_thread_audio_t *swa = (switch_thread_audio_t *)data;

   if (!swa)
         return;

   if (swa->running)
   {
         swa->running = 0;
         compat_thread_join(&swa->thread);
         compat_thread_close(&swa->thread);
   }

   switch_audio_ipc_output_stop(swa);
   switch_audio_ipc_finalize();

   if (swa->fifo)
   {
         fifo_free(swa->fifo);
         swa->fifo = ((void*)0);
   }

   for (i = 0; i < ARRAY_SIZE(swa->buffers); i++)
   {



         free_pages(swa->buffers[i].sample_data);

   }

   free(swa);
   swa = ((void*)0);
}
