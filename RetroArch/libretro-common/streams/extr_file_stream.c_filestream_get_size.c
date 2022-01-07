
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int libretro_vfs_implementation_file ;
typedef scalar_t__ int64_t ;
struct TYPE_3__ {int error_flag; scalar_t__ hfile; } ;
typedef TYPE_1__ RFILE ;


 scalar_t__ filestream_size_cb (scalar_t__) ;
 scalar_t__ retro_vfs_file_size_impl (int *) ;
 scalar_t__ vfs_error_return_value ;

int64_t filestream_get_size(RFILE *stream)
{
   int64_t output;

   if (filestream_size_cb != ((void*)0))
      output = filestream_size_cb(stream->hfile);
   else
      output = retro_vfs_file_size_impl((libretro_vfs_implementation_file*)stream->hfile);

   if (output == vfs_error_return_value)
      stream->error_flag = 1;

   return output;
}
