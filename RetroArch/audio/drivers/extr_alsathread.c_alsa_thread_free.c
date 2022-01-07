
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int thread_dead; scalar_t__ pcm; scalar_t__ cond_lock; scalar_t__ fifo_lock; scalar_t__ cond; scalar_t__ buffer; scalar_t__ worker_thread; } ;
typedef TYPE_1__ alsa_thread_t ;


 int fifo_free (scalar_t__) ;
 int free (TYPE_1__*) ;
 int scond_free (scalar_t__) ;
 int slock_free (scalar_t__) ;
 int slock_lock (scalar_t__) ;
 int slock_unlock (scalar_t__) ;
 int snd_pcm_close (scalar_t__) ;
 int snd_pcm_drop (scalar_t__) ;
 int sthread_join (scalar_t__) ;

__attribute__((used)) static void alsa_thread_free(void *data)
{
   alsa_thread_t *alsa = (alsa_thread_t*)data;

   if (alsa)
   {
      if (alsa->worker_thread)
      {
         slock_lock(alsa->cond_lock);
         alsa->thread_dead = 1;
         slock_unlock(alsa->cond_lock);
         sthread_join(alsa->worker_thread);
      }
      if (alsa->buffer)
         fifo_free(alsa->buffer);
      if (alsa->cond)
         scond_free(alsa->cond);
      if (alsa->fifo_lock)
         slock_free(alsa->fifo_lock);
      if (alsa->cond_lock)
         slock_free(alsa->cond_lock);
      if (alsa->pcm)
      {
         snd_pcm_drop(alsa->pcm);
         snd_pcm_close(alsa->pcm);
      }
      free(alsa);
   }
}
