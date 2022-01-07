
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
struct TYPE_3__ {unsigned int writing; scalar_t__ max_ptr; scalar_t__ ptr; int size; int * buf; } ;
typedef TYPE_1__ memstream_t ;



__attribute__((used)) static void memstream_init(memstream_t *stream,
      uint8_t *buffer, uint64_t max_size, unsigned writing)
{
   if (!stream)
      return;

   stream->buf = buffer;
   stream->size = max_size;
   stream->ptr = 0;
   stream->max_ptr = 0;
   stream->writing = writing;
}
