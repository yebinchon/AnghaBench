
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stopped; int alive; scalar_t__ cond; scalar_t__ lock; scalar_t__ thread; } ;
typedef TYPE_1__ audio_thread_t ;


 int free (TYPE_1__*) ;
 int scond_free (scalar_t__) ;
 int scond_signal (scalar_t__) ;
 int slock_free (scalar_t__) ;
 int slock_lock (scalar_t__) ;
 int slock_unlock (scalar_t__) ;
 int sthread_join (scalar_t__) ;

__attribute__((used)) static void audio_thread_free(void *data)
{
   audio_thread_t *thr = (audio_thread_t*)data;

   if (!thr)
      return;

   if (thr->thread)
   {
      slock_lock(thr->lock);
      thr->stopped = 0;
      thr->alive = 0;
      scond_signal(thr->cond);
      slock_unlock(thr->lock);

      sthread_join(thr->thread);
   }

   if (thr->lock)
      slock_free(thr->lock);
   if (thr->cond)
      scond_free(thr->cond);
   free(thr);
}
