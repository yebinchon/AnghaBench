
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct retro_vfs_file_handle {int dummy; } ;
typedef int libretro_vfs_implementation_file ;
struct TYPE_4__ {struct retro_vfs_file_handle* hfile; } ;
typedef TYPE_1__ RFILE ;


 int filestream_close_cb (struct retro_vfs_file_handle*) ;
 int free (TYPE_1__*) ;
 int retro_vfs_file_close_impl (int *) ;

int filestream_close(RFILE *stream)
{
   int output;
   struct retro_vfs_file_handle* fp = stream->hfile;

   if (filestream_close_cb != ((void*)0))
      output = filestream_close_cb(fp);
   else
      output = retro_vfs_file_close_impl((libretro_vfs_implementation_file*)fp);

   if (output == 0)
      free(stream);

   return output;
}
