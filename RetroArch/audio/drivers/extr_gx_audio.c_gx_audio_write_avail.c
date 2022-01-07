
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dma_busy; int dma_write; } ;
typedef TYPE_1__ gx_audio_t ;


 int BLOCKS ;
 int CHUNK_SIZE ;

__attribute__((used)) static size_t gx_audio_write_avail(void *data)
{
   gx_audio_t *wa = (gx_audio_t*)data;
   return ((wa->dma_busy - wa->dma_write + BLOCKS)
         & (BLOCKS - 1)) * CHUNK_SIZE;
}
