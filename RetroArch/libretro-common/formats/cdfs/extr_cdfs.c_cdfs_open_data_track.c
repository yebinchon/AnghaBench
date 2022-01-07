
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdfs_track_t {int dummy; } ;


 int CHDSTREAM_TRACK_PRIMARY ;
 struct cdfs_track_t* cdfs_open_chd_track (char const*,int ) ;
 struct cdfs_track_t* cdfs_open_cue_track (char const*,int ) ;
 struct cdfs_track_t* cdfs_open_raw_track (char const*) ;
 char* path_get_extension (char const*) ;
 scalar_t__ string_is_equal_noncase (char const*,char*) ;

struct cdfs_track_t* cdfs_open_data_track(const char* path)
{
   const char* ext = path_get_extension(path);

   if (string_is_equal_noncase(ext, "cue"))
      return cdfs_open_cue_track(path, 0);







   return cdfs_open_raw_track(path);
}
