
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t ssize_t ;
struct TYPE_2__ {int lock; int buffer; int cond; scalar_t__ nonblocking; } ;
typedef TYPE_1__ ps3_audio_t ;


 int SYS_NO_TIMEOUT ;
 int fifo_write (int ,void const*,size_t) ;
 size_t fifo_write_avail (int ) ;
 int sys_lwcond_wait (int *,int ) ;
 int sys_lwmutex_lock (int *,int ) ;
 int sys_lwmutex_unlock (int *) ;

__attribute__((used)) static ssize_t ps3_audio_write(void *data, const void *buf, size_t size)
{
   ps3_audio_t *aud = data;

   if (aud->nonblocking)
   {
      if (fifo_write_avail(aud->buffer) < size)
         return 0;
   }

   while (fifo_write_avail(aud->buffer) < size)
      sys_lwcond_wait(&aud->cond, 0);

   sys_lwmutex_lock(&aud->lock, SYS_NO_TIMEOUT);
   fifo_write(aud->buffer, buf, size);
   sys_lwmutex_unlock(&aud->lock);

   return size;
}
