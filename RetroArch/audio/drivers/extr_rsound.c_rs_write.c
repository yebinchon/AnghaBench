
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_2__ {int rd; int buffer; int cond_lock; int cond; scalar_t__ has_error; scalar_t__ nonblock; } ;
typedef TYPE_1__ rsd_t ;


 int fifo_write (int ,char const*,size_t) ;
 size_t fifo_write_avail (int ) ;
 int rsd_callback_lock (int ) ;
 int rsd_callback_unlock (int ) ;
 int scond_wait (int ,int ) ;
 int slock_lock (int ) ;
 int slock_unlock (int ) ;

__attribute__((used)) static ssize_t rs_write(void *data, const void *buf, size_t size)
{
   rsd_t *rsd = (rsd_t*)data;

   if (rsd->has_error)
      return -1;

   if (rsd->nonblock)
   {
      size_t avail, write_amt;

      rsd_callback_lock(rsd->rd);

      avail = fifo_write_avail(rsd->buffer);
      write_amt = avail > size ? size : avail;

      fifo_write(rsd->buffer, buf, write_amt);
      rsd_callback_unlock(rsd->rd);
      return write_amt;
   }
   else
   {
      size_t written = 0;
      while (written < size && !rsd->has_error)
      {
         size_t avail;
         rsd_callback_lock(rsd->rd);

         avail = fifo_write_avail(rsd->buffer);

         if (avail == 0)
         {
            rsd_callback_unlock(rsd->rd);
            if (!rsd->has_error)
            {
               slock_lock(rsd->cond_lock);
               scond_wait(rsd->cond, rsd->cond_lock);
               slock_unlock(rsd->cond_lock);
            }
         }
         else
         {
            size_t write_amt = size - written > avail ? avail : size - written;
            fifo_write(rsd->buffer, (const char*)buf + written, write_amt);
            rsd_callback_unlock(rsd->rd);
            written += write_amt;
         }
      }
      return written;
   }
}
