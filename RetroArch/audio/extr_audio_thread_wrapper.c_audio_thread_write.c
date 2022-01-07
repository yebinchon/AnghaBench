
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
struct TYPE_4__ {int alive; int lock; int cond; int driver_data; TYPE_1__* driver; } ;
typedef TYPE_2__ audio_thread_t ;
struct TYPE_3__ {scalar_t__ (* write ) (int ,void const*,size_t) ;} ;


 int scond_signal (int ) ;
 int slock_lock (int ) ;
 int slock_unlock (int ) ;
 scalar_t__ stub1 (int ,void const*,size_t) ;

__attribute__((used)) static ssize_t audio_thread_write(void *data, const void *buf, size_t size)
{
   ssize_t ret;
   audio_thread_t *thr = (audio_thread_t*)data;

   if (!thr)
      return 0;

   ret = thr->driver->write(thr->driver_data, buf, size);

   if (ret < 0)
   {
      slock_lock(thr->lock);
      thr->alive = 0;
      scond_signal(thr->cond);
      slock_unlock(thr->lock);
   }

   return ret;
}
