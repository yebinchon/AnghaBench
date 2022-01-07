
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; int buffer; } ;
typedef TYPE_1__ coreaudio_t ;


 size_t fifo_write_avail (int ) ;
 int slock_lock (int ) ;
 int slock_unlock (int ) ;

__attribute__((used)) static size_t coreaudio_write_avail(void *data)
{
   size_t avail;
   coreaudio_t *dev = (coreaudio_t*)data;

   slock_lock(dev->lock);
   avail = fifo_write_avail(dev->buffer);
   slock_unlock(dev->lock);

   return avail;
}
