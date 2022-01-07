
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int track; int frames; int type; } ;
typedef TYPE_1__ metadata_t ;
typedef int int32_t ;
typedef int chd_file ;



 int CHDSTREAM_TRACK_LAST ;

 int chdstream_find_track_number (int *,int,TYPE_1__*) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static bool
chdstream_find_special_track(chd_file *fd, int32_t track, metadata_t *meta)
{
   int32_t i;
   metadata_t iter;
   int32_t largest_track = 0;
   uint32_t largest_size = 0;

   for (i = 1; 1; ++i)
   {
      if (!chdstream_find_track_number(fd, i, &iter))
      {
         if (track == CHDSTREAM_TRACK_LAST && i > 1)
         {
            *meta = iter;
            return 1;
         }
         else if (track == 128 && largest_track != 0)
            return chdstream_find_track_number(fd, largest_track, meta);
      }

      switch (track)
      {
         case 129:
            if (strcmp(iter.type, "AUDIO"))
            {
               *meta = iter;
               return 1;
            }
            break;
         case 128:
            if (strcmp(iter.type, "AUDIO") && iter.frames > largest_size)
            {
               largest_size = iter.frames;
               largest_track = iter.track;
            }
            break;
         default:
            break;
      }
   }
}
