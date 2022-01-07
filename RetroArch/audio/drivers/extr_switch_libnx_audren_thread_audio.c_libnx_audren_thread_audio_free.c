
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int running; scalar_t__ fifo; struct TYPE_3__* mempool; int drv; int thread; int fifo_lock; } ;
typedef TYPE_1__ libnx_audren_thread_t ;


 int audrenExit () ;
 int audrvClose (int *) ;
 int audrvVoiceStop (int *,int ) ;
 int fifo_clear (scalar_t__) ;
 int fifo_free (scalar_t__) ;
 int free (TYPE_1__*) ;
 int mutexUnlock (int *) ;
 int threadClose (int *) ;
 int threadWaitForExit (int *) ;

__attribute__((used)) static void libnx_audren_thread_audio_free(void *data)
{
   libnx_audren_thread_t *aud = (libnx_audren_thread_t*)data;

   if (!aud)
      return;

   aud->running = 0;
   mutexUnlock(&aud->fifo_lock);
   threadWaitForExit(&aud->thread);
   threadClose(&aud->thread);
   audrvVoiceStop(&aud->drv, 0);
   audrvClose(&aud->drv);
   audrenExit();

   if (aud->mempool)
   {
      free(aud->mempool);
   }

   if (aud->fifo)
   {
      fifo_clear(aud->fifo);
      fifo_free(aud->fifo);
   }

   free(aud);
}
