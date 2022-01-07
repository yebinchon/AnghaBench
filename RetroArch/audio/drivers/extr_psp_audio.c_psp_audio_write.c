
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void const uint32_t ;
typedef size_t uint16_t ;
typedef int ssize_t ;
struct TYPE_2__ {size_t write_pos; int fifo_lock; scalar_t__ buffer; int cond_lock; int cond; scalar_t__ read_pos; scalar_t__ nonblocking; int running; } ;
typedef TYPE_1__ psp_audio_t ;


 size_t AUDIO_BUFFER_SIZE ;
 size_t AUDIO_BUFFER_SIZE_MASK ;
 int memcpy (scalar_t__,void const*,size_t) ;
 int scond_wait (int ,int ) ;
 int slock_lock (int ) ;
 int slock_unlock (int ) ;

__attribute__((used)) static ssize_t psp_audio_write(void *data, const void *buf, size_t size)
{
   psp_audio_t* psp = (psp_audio_t*)data;
   uint16_t write_pos = psp->write_pos;
   uint16_t sampleCount = size / sizeof(uint32_t);

   if (!psp->running)
      return -1;

   if (psp->nonblocking)
   {
      if (AUDIO_BUFFER_SIZE - ((uint16_t)
            (psp->write_pos - psp->read_pos) & AUDIO_BUFFER_SIZE_MASK) < size)
      return 0;
   }

   slock_lock(psp->cond_lock);
   while (AUDIO_BUFFER_SIZE - ((uint16_t)
      (psp->write_pos - psp->read_pos) & AUDIO_BUFFER_SIZE_MASK) < size)
      scond_wait(psp->cond, psp->cond_lock);
   slock_unlock(psp->cond_lock);

   slock_lock(psp->fifo_lock);
   if((write_pos + sampleCount) > AUDIO_BUFFER_SIZE)
   {
      memcpy(psp->buffer + write_pos, buf,
            (AUDIO_BUFFER_SIZE - write_pos) * sizeof(uint32_t));
      memcpy(psp->buffer, (uint32_t*) buf +
            (AUDIO_BUFFER_SIZE - write_pos),
            (write_pos + sampleCount - AUDIO_BUFFER_SIZE) * sizeof(uint32_t));
   }
   else
      memcpy(psp->buffer + write_pos, buf, size);

   write_pos += sampleCount;
   write_pos &= AUDIO_BUFFER_SIZE_MASK;
   psp->write_pos = write_pos;

   slock_unlock(psp->fifo_lock);
   return size;

}
