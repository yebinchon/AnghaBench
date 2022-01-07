
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fifoLock; int fifo; } ;
typedef TYPE_1__ switch_thread_audio_t ;


 int compat_mutex_lock (int *) ;
 int compat_mutex_unlock (int *) ;
 size_t fifo_write_avail (int ) ;

__attribute__((used)) static size_t switch_thread_audio_write_avail(void *data)
{
   size_t val;
   switch_thread_audio_t* swa = (switch_thread_audio_t*)data;

   compat_mutex_lock(&swa->fifoLock);
   val = fifo_write_avail(swa->fifo);
   compat_mutex_unlock(&swa->fifoLock);

   return val;
}
