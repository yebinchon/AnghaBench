
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct TYPE_4__ {scalar_t__ hunknum; scalar_t__ hunkmem; int chd; scalar_t__ swab; } ;
typedef TYPE_1__ chdstream_t ;
typedef scalar_t__ chd_error ;
struct TYPE_5__ {int hunkbytes; } ;


 scalar_t__ CHDERR_NONE ;
 int SWAP16 (int ) ;
 TYPE_3__* chd_get_header (int ) ;
 scalar_t__ chd_read (int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static bool
chdstream_load_hunk(chdstream_t *stream, uint32_t hunknum)
{
   chd_error err;
   uint16_t *array;
   uint32_t i;
   uint32_t count;

   if (hunknum == stream->hunknum)
      return 1;

   err = chd_read(stream->chd, hunknum, stream->hunkmem);
   if (err != CHDERR_NONE)
      return 0;

   if (stream->swab)
   {
      count = chd_get_header(stream->chd)->hunkbytes / 2;
      array = (uint16_t*) stream->hunkmem;
      for (i = 0; i < count; ++i)
         array[i] = SWAP16(array[i]);
   }

   stream->hunknum = hunknum;
   return 1;
}
