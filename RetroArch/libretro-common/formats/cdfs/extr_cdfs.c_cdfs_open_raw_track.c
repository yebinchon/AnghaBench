
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cdfs_track_t ;


 int RETRO_VFS_FILE_ACCESS_HINT_NONE ;
 int RETRO_VFS_FILE_ACCESS_READ ;
 int * cdfs_wrap_stream (int ,int ) ;
 int intfstream_open_file (char const*,int ,int ) ;
 char* path_get_extension (char const*) ;
 scalar_t__ string_is_equal_noncase (char const*,char*) ;

cdfs_track_t* cdfs_open_raw_track(const char* path)
{
   const char* ext = path_get_extension(path);

   if (string_is_equal_noncase(ext, "bin") || string_is_equal_noncase(ext, "iso"))
      return cdfs_wrap_stream(intfstream_open_file(path, RETRO_VFS_FILE_ACCESS_READ, RETRO_VFS_FILE_ACCESS_HINT_NONE), 0);


   return ((void*)0);
}
