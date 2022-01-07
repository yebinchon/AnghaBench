
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int libretro_vfs_implementation_file ;
struct TYPE_3__ {int error_flag; scalar_t__ hfile; } ;
typedef TYPE_1__ RFILE ;


 int filestream_flush_cb (scalar_t__) ;
 int retro_vfs_file_flush_impl (int *) ;
 int vfs_error_return_value ;

int filestream_flush(RFILE *stream)
{
   int output;

   if (filestream_flush_cb != ((void*)0))
      output = filestream_flush_cb(stream->hfile);
   else
      output = retro_vfs_file_flush_impl((libretro_vfs_implementation_file*)stream->hfile);

   if (output == vfs_error_return_value)
      stream->error_flag = 1;

   return output;
}
