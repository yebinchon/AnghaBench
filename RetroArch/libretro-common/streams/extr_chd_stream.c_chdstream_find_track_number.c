
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ track; scalar_t__ extra; scalar_t__ frames; scalar_t__ frame_offset; } ;
typedef TYPE_1__ metadata_t ;
typedef scalar_t__ int32_t ;
typedef int chd_file ;


 int chdstream_get_meta (int *,scalar_t__,TYPE_1__*) ;

__attribute__((used)) static bool
chdstream_find_track_number(chd_file *fd, int32_t track, metadata_t *meta)
{
   uint32_t i;
   uint32_t frame_offset = 0;

   for (i = 0; 1; ++i)
   {
      if (!chdstream_get_meta(fd, i, meta))
         return 0;

      if (track == meta->track)
      {
         meta->frame_offset = frame_offset;
         return 1;
      }

      frame_offset += meta->frames + meta->extra;
   }
}
