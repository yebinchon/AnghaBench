
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_5__ {scalar_t__ pregap; scalar_t__ frames; scalar_t__ extra; } ;
typedef TYPE_1__ metadata_t ;
struct TYPE_6__ {scalar_t__ track_frame; int chd; } ;
typedef TYPE_2__ chdstream_t ;


 scalar_t__ chdstream_get_meta (int ,scalar_t__,TYPE_1__*) ;

uint32_t chdstream_get_pregap(chdstream_t *stream)
{
   metadata_t meta;
   uint32_t frame_offset = 0;
   uint32_t i;

   for (i = 0; chdstream_get_meta(stream->chd, i, &meta); ++i)
   {
      if (stream->track_frame == frame_offset)
         return meta.pregap;

      frame_offset += meta.frames + meta.extra;
   }

   return 0;
}
