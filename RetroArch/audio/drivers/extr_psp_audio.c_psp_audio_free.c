
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int running; struct TYPE_3__* zeroBuffer; int * worker_thread; struct TYPE_3__* buffer; scalar_t__ cond_lock; scalar_t__ fifo_lock; scalar_t__ cond; } ;
typedef TYPE_1__ psp_audio_t ;


 int free (TYPE_1__*) ;
 int scond_free (scalar_t__) ;
 int slock_free (scalar_t__) ;
 int sthread_join (int *) ;

__attribute__((used)) static void psp_audio_free(void *data)
{
   psp_audio_t* psp = (psp_audio_t*)data;
   if(!psp)
      return;

   if(psp->running){
      if (psp->worker_thread)
      {
            psp->running = 0;
            sthread_join(psp->worker_thread);
      }

      if (psp->cond)
            scond_free(psp->cond);
      if (psp->fifo_lock)
            slock_free(psp->fifo_lock);
      if (psp->cond_lock)
            slock_free(psp->cond_lock);
   }
   free(psp->buffer);
   psp->worker_thread = ((void*)0);
   free(psp->zeroBuffer);
   free(psp);
}
