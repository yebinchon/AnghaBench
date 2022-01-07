
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct png_chunk {scalar_t__ size; } ;
struct idat_buffer {int * data; scalar_t__ size; } ;


 scalar_t__ realloc (int *,scalar_t__) ;

bool png_realloc_idat(const struct png_chunk *chunk, struct idat_buffer *buf)
{
   uint8_t *new_buffer = (uint8_t*)realloc(buf->data, buf->size + chunk->size);

   if (!new_buffer)
      return 0;

   buf->data = new_buffer;
   return 1;
}
