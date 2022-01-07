
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void uint8_t ;
struct TYPE_3__ {size_t first; size_t size; void const* buffer; } ;
typedef TYPE_1__ fifo_buffer_t ;


 int memcpy (void*,void const*,size_t) ;

void fifo_read(fifo_buffer_t *buffer, void *in_buf, size_t size)
{
   size_t first_read = size;
   size_t rest_read = 0;

   if (buffer->first + size > buffer->size)
   {
      first_read = buffer->size - buffer->first;
      rest_read = size - first_read;
   }

   memcpy(in_buf, (const uint8_t*)buffer->buffer + buffer->first, first_read);
   memcpy((uint8_t*)in_buf + first_read, buffer->buffer, rest_read);

   buffer->first = (buffer->first + size) % buffer->size;
}
