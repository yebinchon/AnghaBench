
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_2__ {int fifo_lock; int buffer; int cond_lock; int cond; scalar_t__ thread_dead; scalar_t__ nonblock; } ;
typedef TYPE_1__ alsa_thread_t ;


 size_t MIN (size_t,size_t) ;
 int fifo_write (int ,char const*,size_t) ;
 size_t fifo_write_avail (int ) ;
 int scond_wait (int ,int ) ;
 int slock_lock (int ) ;
 int slock_unlock (int ) ;

__attribute__((used)) static ssize_t alsa_thread_write(void *data, const void *buf, size_t size)
{
   alsa_thread_t *alsa = (alsa_thread_t*)data;

   if (alsa->thread_dead)
      return -1;

   if (alsa->nonblock)
   {
      size_t avail;
      size_t write_amt;

      slock_lock(alsa->fifo_lock);
      avail = fifo_write_avail(alsa->buffer);
      write_amt = MIN(avail, size);

      fifo_write(alsa->buffer, buf, write_amt);
      slock_unlock(alsa->fifo_lock);

      return write_amt;
   }
   else
   {
      size_t written = 0;
      while (written < size && !alsa->thread_dead)
      {
         size_t avail;
         slock_lock(alsa->fifo_lock);
         avail = fifo_write_avail(alsa->buffer);

         if (avail == 0)
         {
            slock_unlock(alsa->fifo_lock);
            slock_lock(alsa->cond_lock);
            if (!alsa->thread_dead)
               scond_wait(alsa->cond, alsa->cond_lock);
            slock_unlock(alsa->cond_lock);
         }
         else
         {
            size_t write_amt = MIN(size - written, avail);
            fifo_write(alsa->buffer,
                  (const char*)buf + written, write_amt);
            slock_unlock(alsa->fifo_lock);
            written += write_amt;
         }
      }
      return written;
   }
}
