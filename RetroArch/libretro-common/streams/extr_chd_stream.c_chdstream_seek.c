
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_3__ {int offset; int track_end; } ;
typedef TYPE_1__ chdstream_t ;






int64_t chdstream_seek(chdstream_t *stream, int64_t offset, int whence)
{
   int64_t new_offset;

   switch (whence)
   {
      case 128:
         new_offset = offset;
         break;
      case 130:
         new_offset = stream->offset + offset;
         break;
      case 129:
         new_offset = stream->track_end + offset;
         break;
      default:
         return -1;
   }

   if (new_offset < 0)
      return -1;

   if (new_offset > stream->track_end)
      new_offset = stream->track_end;

   stream->offset = new_offset;
   return 0;
}
