
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {size_t size; int * buffer; } ;
typedef TYPE_1__ fifo_buffer_t ;


 scalar_t__ calloc (int,size_t) ;
 int free (TYPE_1__*) ;

fifo_buffer_t *fifo_new(size_t size)
{
   uint8_t *buffer = ((void*)0);
   fifo_buffer_t *buf = (fifo_buffer_t*)calloc(1, sizeof(*buf));

   if (!buf)
      return ((void*)0);

   buffer = (uint8_t*)calloc(1, size + 1);

   if (!buffer)
   {
      free(buf);
      return ((void*)0);
   }

   buf->buffer = buffer;
   buf->size = size + 1;

   return buf;
}
