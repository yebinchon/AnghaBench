
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t BLOCKS ;
 size_t CHUNK_SIZE ;

__attribute__((used)) static size_t gx_audio_buffer_size(void *data)
{
   (void)data;
   return BLOCKS * CHUNK_SIZE;
}
