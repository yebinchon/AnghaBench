
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_3__ {int ptr; int max_ptr; int size; int writing; } ;
typedef TYPE_1__ memstream_t ;
typedef int int64_t ;






int64_t memstream_seek(memstream_t *stream, int64_t offset, int whence)
{
   uint64_t ptr;

   switch (whence)
   {
      case 128:
         ptr = offset;
         break;
      case 130:
         ptr = stream->ptr + offset;
         break;
      case 129:
         ptr = (stream->writing ? stream->max_ptr : stream->size) + offset;
         break;
      default:
         return -1;
   }

   if (ptr <= stream->size)
   {
      stream->ptr = ptr;
      return 0;
   }

   return -1;
}
