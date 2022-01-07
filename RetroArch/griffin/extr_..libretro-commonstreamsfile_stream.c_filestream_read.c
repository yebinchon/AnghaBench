
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int libretro_vfs_implementation_file ;
typedef scalar_t__ int64_t ;
struct TYPE_3__ {int error_flag; int eof_flag; scalar_t__ hfile; } ;
typedef TYPE_1__ RFILE ;


 scalar_t__ filestream_read_cb (scalar_t__,void*,scalar_t__) ;
 scalar_t__ retro_vfs_file_read_impl (int *,void*,scalar_t__) ;
 scalar_t__ vfs_error_return_value ;

int64_t filestream_read(RFILE *stream, void *s, int64_t len)
{
   int64_t output;

   if (filestream_read_cb != ((void*)0))
      output = filestream_read_cb(stream->hfile, s, len);
   else
      output = retro_vfs_file_read_impl(
            (libretro_vfs_implementation_file*)stream->hfile, s, len);

   if (output == vfs_error_return_value)
      stream->error_flag = 1;
   if (output < len)
      stream->eof_flag = 1;

   return output;
}
