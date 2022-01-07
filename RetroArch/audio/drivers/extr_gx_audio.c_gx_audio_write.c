
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef size_t ssize_t ;
struct TYPE_2__ {scalar_t__ write_ptr; size_t dma_write; size_t dma_next; size_t dma_busy; scalar_t__* data; int nonblock; } ;
typedef TYPE_1__ gx_audio_t ;


 int BLOCKS ;
 scalar_t__ CHUNK_FRAMES ;
 int copy_swapped (scalar_t__,int const*,size_t) ;

__attribute__((used)) static ssize_t gx_audio_write(void *data, const void *buf_, size_t size)
{
   size_t frames = size >> 2;
   const uint32_t *buf = buf_;
   gx_audio_t *wa = data;

   while (frames)
   {
      size_t to_write = CHUNK_FRAMES - wa->write_ptr;

      if (frames < to_write)
         to_write = frames;



      while ((wa->dma_write == wa->dma_next ||
               wa->dma_write == wa->dma_busy) && !wa->nonblock);

      copy_swapped(wa->data[wa->dma_write] + wa->write_ptr, buf, to_write);

      wa->write_ptr += to_write;
      frames -= to_write;
      buf += to_write;

      if (wa->write_ptr >= CHUNK_FRAMES)
      {
         wa->write_ptr -= CHUNK_FRAMES;
         wa->dma_write = (wa->dma_write + 1) & (BLOCKS - 1);
      }
   }

   return size;
}
