
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fifo_lock; int buffer; scalar_t__ thread_dead; } ;
typedef TYPE_1__ alsa_thread_t ;


 size_t fifo_write_avail (int ) ;
 int slock_lock (int ) ;
 int slock_unlock (int ) ;

__attribute__((used)) static size_t alsa_thread_write_avail(void *data)
{
   alsa_thread_t *alsa = (alsa_thread_t*)data;
   size_t val;

   if (alsa->thread_dead)
      return 0;
   slock_lock(alsa->fifo_lock);
   val = fifo_write_avail(alsa->buffer);
   slock_unlock(alsa->fifo_lock);
   return val;
}
