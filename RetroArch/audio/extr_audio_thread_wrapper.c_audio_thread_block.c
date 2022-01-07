
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stopped; int stopped_ack; int lock; int cond; } ;
typedef TYPE_1__ audio_thread_t ;


 int scond_signal (int ) ;
 int scond_wait (int ,int ) ;
 int slock_lock (int ) ;
 int slock_unlock (int ) ;

__attribute__((used)) static void audio_thread_block(audio_thread_t *thr)
{
   if (!thr)
      return;

   if (thr->stopped)
      return;

   slock_lock(thr->lock);
   thr->stopped_ack = 0;
   thr->stopped = 1;
   scond_signal(thr->cond);


   while (!thr->stopped_ack)
      scond_wait(thr->cond, thr->lock);

   slock_unlock(thr->lock);
}
