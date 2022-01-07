
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int libretro_vfs_implementation_file ;
struct TYPE_3__ {scalar_t__ hfile; } ;
typedef TYPE_1__ RFILE ;


 char const* filestream_get_path_cb (scalar_t__) ;
 char const* retro_vfs_file_get_path_impl (int *) ;

const char* filestream_get_path(RFILE *stream)
{
   if (filestream_get_path_cb != ((void*)0))
      return filestream_get_path_cb(stream->hfile);

   return retro_vfs_file_get_path_impl((libretro_vfs_implementation_file*)stream->hfile);
}
