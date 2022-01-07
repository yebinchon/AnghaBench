
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* orig_path; } ;
typedef TYPE_1__ libretro_vfs_implementation_file ;


 int abort () ;

const char *retro_vfs_file_get_path_impl(
      libretro_vfs_implementation_file *stream)
{

   if (!stream)
      abort();
   return stream->orig_path;
}
