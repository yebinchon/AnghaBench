
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int libretro_vfs_implementation_file ;
typedef scalar_t__ int64_t ;
struct TYPE_3__ {int error_flag; scalar_t__ hfile; } ;
typedef TYPE_1__ RFILE ;


 scalar_t__ filestream_truncate_cb (scalar_t__,scalar_t__) ;
 scalar_t__ retro_vfs_file_truncate_impl (int *,scalar_t__) ;
 scalar_t__ vfs_error_return_value ;

int64_t filestream_truncate(RFILE *stream, int64_t length)
{
   int64_t output;

   if (filestream_truncate_cb != ((void*)0))
      output = filestream_truncate_cb(stream->hfile, length);
   else
      output = retro_vfs_file_truncate_impl((libretro_vfs_implementation_file*)stream->hfile, length);

   if (output == vfs_error_return_value)
      stream->error_flag = 1;

   return output;
}
