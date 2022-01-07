
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fifo_lock; int fifo; } ;
typedef TYPE_1__ libnx_audren_thread_t ;


 size_t fifo_write_avail (int ) ;
 int mutexLock (int *) ;
 int mutexUnlock (int *) ;

__attribute__((used)) static size_t libnx_audren_thread_audio_write_avail(void *data)
{
   libnx_audren_thread_t *aud = (libnx_audren_thread_t*)data;
   size_t available;

   if (!aud)
      return 0;

   mutexLock(&aud->fifo_lock);
   available = fifo_write_avail(aud->fifo);
   mutexUnlock(&aud->fifo_lock);

   return available;
}
