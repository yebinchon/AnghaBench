
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t ssize_t ;
struct TYPE_2__ {int lock; int cond; scalar_t__ nonblock; int buffer; } ;
typedef TYPE_1__ coreaudio_t ;


 int fifo_write (int ,int const*,size_t) ;
 size_t fifo_write_avail (int ) ;
 int g_interrupted ;
 int scond_wait (int ,int ) ;
 int scond_wait_timeout (int ,int ,int) ;
 int slock_lock (int ) ;
 int slock_unlock (int ) ;

__attribute__((used)) static ssize_t coreaudio_write(void *data, const void *buf_, size_t size)
{
   coreaudio_t *dev = (coreaudio_t*)data;
   const uint8_t *buf = (const uint8_t*)buf_;
   size_t written = 0;

   while (!g_interrupted && size > 0)
   {
      size_t write_avail;

      slock_lock(dev->lock);

      write_avail = fifo_write_avail(dev->buffer);
      if (write_avail > size)
         write_avail = size;

      fifo_write(dev->buffer, buf, write_avail);
      buf += write_avail;
      written += write_avail;
      size -= write_avail;

      if (dev->nonblock)
      {
         slock_unlock(dev->lock);
         break;
      }






      if (write_avail == 0)
         scond_wait(dev->cond, dev->lock);

      slock_unlock(dev->lock);
   }

   return written;
}
