
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_2__ {int fifo_condlock; int fifo_condvar; int fifo_lock; int fifo; scalar_t__ running; scalar_t__ nonblocking; scalar_t__ paused; } ;
typedef TYPE_1__ libnx_audren_thread_t ;


 size_t MIN (size_t,size_t) ;
 int condvarWait (int *,int *) ;
 int fifo_write (int ,char const*,size_t) ;
 size_t fifo_write_avail (int ) ;
 int mutexLock (int *) ;
 int mutexUnlock (int *) ;

__attribute__((used)) static ssize_t libnx_audren_thread_audio_write(void *data, const void *buf, size_t size)
{
   libnx_audren_thread_t *aud = (libnx_audren_thread_t*)data;
   size_t available, written, written_tmp;

   if (!aud || !aud->running)
      return -1;

   if(aud->paused)
      return 0;

   if(aud->nonblocking)
   {
      mutexLock(&aud->fifo_lock);
      available = fifo_write_avail(aud->fifo);
      written = MIN(available, size);
      if(written > 0)
      {
         fifo_write(aud->fifo, buf, written);
      }
      mutexUnlock(&aud->fifo_lock);
   }
   else
   {
      written = 0;
      while (written < size && aud->running)
      {
         mutexLock(&aud->fifo_lock);
         available = fifo_write_avail(aud->fifo);
         if(available)
         {
            written_tmp = MIN(size - written, available);
            fifo_write(aud->fifo, (const char*)buf + written, written_tmp);
            mutexUnlock(&aud->fifo_lock);
            written += written_tmp;
         }
         else
         {
            mutexUnlock(&aud->fifo_lock);
            mutexLock(&aud->fifo_condlock);
            condvarWait(&aud->fifo_condvar, &aud->fifo_condlock);
            mutexUnlock(&aud->fifo_condlock);
         }
      }
   }

   return written;
}
