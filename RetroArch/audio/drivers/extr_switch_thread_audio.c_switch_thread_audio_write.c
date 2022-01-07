
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fifoLock; int fifo; int condLock; int cond; scalar_t__ running; scalar_t__ nonblocking; } ;
typedef TYPE_1__ switch_thread_audio_t ;
typedef size_t ssize_t ;


 size_t MIN (size_t,size_t) ;
 int compat_condvar_wait (int *,int *) ;
 int compat_mutex_lock (int *) ;
 int compat_mutex_unlock (int *) ;
 int fifo_write (int ,char const*,size_t) ;
 size_t fifo_write_avail (int ) ;

__attribute__((used)) static ssize_t switch_thread_audio_write(void *data, const void *buf, size_t size)
{
   size_t avail, written;
   switch_thread_audio_t *swa = (switch_thread_audio_t *)data;

   if (!swa || !swa->running)
         return 0;

   if (swa->nonblocking)
   {
      compat_mutex_lock(&swa->fifoLock);
      avail = fifo_write_avail(swa->fifo);
      written = MIN(avail, size);
      if (written > 0)
         fifo_write(swa->fifo, buf, written);
      compat_mutex_unlock(&swa->fifoLock);
   }
   else
   {
      written = 0;
      while (written < size && swa->running)
      {
         compat_mutex_lock(&swa->fifoLock);
         avail = fifo_write_avail(swa->fifo);
         if (avail == 0)
         {
            compat_mutex_unlock(&swa->fifoLock);
            compat_mutex_lock(&swa->condLock);
            if (swa->running)
               compat_condvar_wait(&swa->cond, &swa->condLock);
            compat_mutex_unlock(&swa->condLock);
         }
         else
         {
            size_t write_amt = MIN(size - written, avail);
            fifo_write(swa->fifo, (const char*)buf + written, write_amt);
            compat_mutex_unlock(&swa->fifoLock);
            written += write_amt;
         }
      }
   }

   return written;
}
