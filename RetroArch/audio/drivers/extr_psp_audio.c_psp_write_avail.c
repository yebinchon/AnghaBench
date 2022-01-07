
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint16_t ;
struct TYPE_2__ {int fifo_lock; scalar_t__ read_pos; scalar_t__ write_pos; int running; } ;
typedef TYPE_1__ psp_audio_t ;


 size_t AUDIO_BUFFER_SIZE ;
 size_t AUDIO_BUFFER_SIZE_MASK ;
 int slock_lock (int ) ;
 int slock_unlock (int ) ;

__attribute__((used)) static size_t psp_write_avail(void *data)
{
   size_t val;
   psp_audio_t* psp = (psp_audio_t*)data;

   if (!psp||!psp->running)
      return 0;
   slock_lock(psp->fifo_lock);
   val = AUDIO_BUFFER_SIZE - ((uint16_t)
         (psp->write_pos - psp->read_pos) & AUDIO_BUFFER_SIZE_MASK);
   slock_unlock(psp->fifo_lock);
   return val;
}
