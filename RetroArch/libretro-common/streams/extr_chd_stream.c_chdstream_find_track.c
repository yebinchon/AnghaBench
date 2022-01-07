
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int metadata_t ;
typedef scalar_t__ int32_t ;
typedef int chd_file ;


 int chdstream_find_special_track (int *,scalar_t__,int *) ;
 int chdstream_find_track_number (int *,scalar_t__,int *) ;

__attribute__((used)) static bool
chdstream_find_track(chd_file *fd, int32_t track, metadata_t *meta)
{
   if (track < 0)
      return chdstream_find_special_track(fd, track, meta);
   return chdstream_find_track_number(fd, track, meta);
}
