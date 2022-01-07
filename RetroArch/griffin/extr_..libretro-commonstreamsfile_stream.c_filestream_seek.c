
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int libretro_vfs_implementation_file ;
typedef scalar_t__ int64_t ;
struct TYPE_3__ {int error_flag; int eof_flag; scalar_t__ hfile; } ;
typedef TYPE_1__ RFILE ;


 scalar_t__ filestream_seek_cb (scalar_t__,scalar_t__,int) ;
 scalar_t__ retro_vfs_file_seek_impl (int *,scalar_t__,int) ;
 scalar_t__ vfs_error_return_value ;

int64_t filestream_seek(RFILE *stream, int64_t offset, int seek_position)
{
   int64_t output;

   if (filestream_seek_cb != ((void*)0))
      output = filestream_seek_cb(stream->hfile, offset, seek_position);
   else
      output = retro_vfs_file_seek_impl((libretro_vfs_implementation_file*)stream->hfile, offset, seek_position);

   if (output == vfs_error_return_value)
      stream->error_flag = 1;
   stream->eof_flag = 0;

   return output;
}
