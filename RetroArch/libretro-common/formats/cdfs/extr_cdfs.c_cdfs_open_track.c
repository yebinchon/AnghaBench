
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdfs_track_t {int dummy; } ;
typedef int intfstream_t ;


 struct cdfs_track_t* cdfs_open_chd_track (char const*,unsigned int) ;
 struct cdfs_track_t* cdfs_open_cue_track (char const*,unsigned int) ;
 char* path_get_extension (char const*) ;
 scalar_t__ string_is_equal_noncase (char const*,char*) ;

struct cdfs_track_t* cdfs_open_track(const char* path, unsigned int track_index)
{
   intfstream_t* stream = ((void*)0);
   const char* ext = path_get_extension(path);

   if (string_is_equal_noncase(ext, "cue"))
      return cdfs_open_cue_track(path, track_index);







   return ((void*)0);
}
