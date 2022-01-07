
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int inited; int stopped_ack; scalar_t__ driver_data; TYPE_1__* driver; int lock; int is_shutdown; int cond; scalar_t__ stopped; int alive; int use_float; int new_rate; int block_frames; int latency; int out_rate; int device; } ;
typedef TYPE_2__ audio_thread_t ;
struct TYPE_3__ {int (* free ) (scalar_t__) ;int (* start ) (scalar_t__,int ) ;int (* stop ) (scalar_t__) ;int (* use_float ) (scalar_t__) ;scalar_t__ (* init ) (int ,int ,int ,int ,int ) ;} ;


 int audio_driver_callback () ;
 int scond_signal (int ) ;
 int scond_wait (int ,int ) ;
 int slock_lock (int ) ;
 int slock_unlock (int ) ;
 scalar_t__ stub1 (int ,int ,int ,int ,int ) ;
 int stub2 (scalar_t__) ;
 int stub3 (scalar_t__) ;
 int stub4 (scalar_t__,int ) ;
 int stub5 (scalar_t__) ;

__attribute__((used)) static void audio_thread_loop(void *data)
{
   audio_thread_t *thr = (audio_thread_t*)data;

   if (!thr)
      return;

   thr->driver_data = thr->driver->init(
         thr->device, thr->out_rate, thr->latency,
         thr->block_frames, thr->new_rate);
   slock_lock(thr->lock);
   thr->inited = thr->driver_data ? 1 : -1;
   if (thr->inited > 0 && thr->driver->use_float)
      thr->use_float = thr->driver->use_float(thr->driver_data);
   scond_signal(thr->cond);
   slock_unlock(thr->lock);

   if (thr->inited < 0)
      return;



   slock_lock(thr->lock);
   while (thr->stopped)
      scond_wait(thr->cond, thr->lock);
   slock_unlock(thr->lock);

   for (;;)
   {
      slock_lock(thr->lock);

      if (!thr->alive)
      {
         scond_signal(thr->cond);
         thr->stopped_ack = 1;
         slock_unlock(thr->lock);
         break;
      }

      if (thr->stopped)
      {
         thr->driver->stop(thr->driver_data);
         while (thr->stopped)
         {



            thr->stopped_ack = 1;
            scond_signal(thr->cond);

            scond_wait(thr->cond, thr->lock);
         }
         thr->driver->start(thr->driver_data, thr->is_shutdown);
      }

      slock_unlock(thr->lock);
      audio_driver_callback();
   }

   thr->driver->free(thr->driver_data);
}
