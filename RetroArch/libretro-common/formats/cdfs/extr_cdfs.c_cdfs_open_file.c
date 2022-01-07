
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int stream_sector_size; int stream; } ;
typedef TYPE_1__ cdfs_track_t ;
struct TYPE_8__ {int current_sector; int first_sector; int size; TYPE_1__* track; } ;
typedef TYPE_2__ cdfs_file_t ;


 int cdfs_find_file (TYPE_2__*,char const*) ;
 int intfstream_get_size (int ) ;
 int memset (TYPE_2__*,int ,int) ;

int cdfs_open_file(cdfs_file_t* file, cdfs_track_t* track, const char* path)
{
   if (!file || !track)
      return 0;

   memset(file, 0, sizeof(*file));

   file->track = track;

   file->current_sector = -1;
   if (path != ((void*)0))
   {
      file->first_sector = cdfs_find_file(file, path);
   }
   else if (file->track->stream_sector_size)
   {
      file->first_sector = 0;
      file->size = (intfstream_get_size(file->track->stream) / file->track->stream_sector_size) * 2048;
   }
   else
   {
      file->first_sector = -1;
   }

   return (file->first_sector >= 0);
}
