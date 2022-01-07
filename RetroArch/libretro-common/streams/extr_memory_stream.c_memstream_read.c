
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_4__ {scalar_t__ size; scalar_t__ ptr; scalar_t__ buf; } ;
typedef TYPE_1__ memstream_t ;


 int memcpy (void*,scalar_t__,size_t) ;
 int memstream_update_pos (TYPE_1__*) ;

uint64_t memstream_read(memstream_t *stream, void *data, uint64_t bytes)
{
   uint64_t avail = 0;

   if (!stream)
      return 0;

   avail = stream->size - stream->ptr;
   if (bytes > avail)
      bytes = avail;

   memcpy(data, stream->buf + stream->ptr, (size_t)bytes);
   stream->ptr += bytes;
   memstream_update_pos(stream);
   return bytes;
}
