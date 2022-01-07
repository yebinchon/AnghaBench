
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {size_t dma_busy; size_t dma_next; scalar_t__* data; } ;
typedef TYPE_1__ gx_audio_t ;


 int AIInitDMA (int ,int ) ;
 int BLOCKS ;
 int CHUNK_SIZE ;
 int DCFlushRange (scalar_t__,int ) ;
 scalar_t__ gx_audio_data ;
 int memset (scalar_t__,int ,int ) ;
 scalar_t__ stop_audio ;

__attribute__((used)) static void dma_callback(void)
{
   gx_audio_t *wa = (gx_audio_t*)gx_audio_data;

   if (stop_audio)
      return;


   memset(wa->data[wa->dma_busy], 0, CHUNK_SIZE);

   wa->dma_busy = wa->dma_next;
   wa->dma_next = (wa->dma_next + 1) & (BLOCKS - 1);

   DCFlushRange(wa->data[wa->dma_next], CHUNK_SIZE);

   AIInitDMA((uint32_t)wa->data[wa->dma_next], CHUNK_SIZE);
}
