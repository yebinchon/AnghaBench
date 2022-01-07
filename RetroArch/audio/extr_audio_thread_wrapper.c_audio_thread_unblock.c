
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stopped; int lock; int cond; } ;
typedef TYPE_1__ audio_thread_t ;


 int scond_signal (int ) ;
 int slock_lock (int ) ;
 int slock_unlock (int ) ;

__attribute__((used)) static void audio_thread_unblock(audio_thread_t *thr)
{
   if (!thr)
      return;

   slock_lock(thr->lock);
   thr->stopped = 0;
   scond_signal(thr->cond);
   slock_unlock(thr->lock);
}
