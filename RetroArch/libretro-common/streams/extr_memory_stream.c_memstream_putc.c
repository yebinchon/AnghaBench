
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ptr; scalar_t__ size; int* buf; } ;
typedef TYPE_1__ memstream_t ;


 int memstream_update_pos (TYPE_1__*) ;

void memstream_putc(memstream_t *stream, int c)
{
   if (stream->ptr < stream->size)
      stream->buf[stream->ptr++] = c;

   memstream_update_pos(stream);
}
