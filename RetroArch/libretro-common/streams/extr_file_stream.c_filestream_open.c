
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct retro_vfs_file_handle {int dummy; } ;
struct TYPE_3__ {int error_flag; int eof_flag; struct retro_vfs_file_handle* hfile; } ;
typedef TYPE_1__ RFILE ;


 scalar_t__ filestream_open_cb (char const*,unsigned int,unsigned int) ;
 scalar_t__ malloc (int) ;
 scalar_t__ retro_vfs_file_open_impl (char const*,unsigned int,unsigned int) ;

RFILE* filestream_open(const char *path, unsigned mode, unsigned hints)
{
   struct retro_vfs_file_handle *fp = ((void*)0);
   RFILE* output = ((void*)0);

   if (filestream_open_cb != ((void*)0))
      fp = (struct retro_vfs_file_handle*)
         filestream_open_cb(path, mode, hints);
   else
      fp = (struct retro_vfs_file_handle*)
         retro_vfs_file_open_impl(path, mode, hints);

   if (!fp)
      return ((void*)0);

   output = (RFILE*)malloc(sizeof(RFILE));
   output->error_flag = 0;
   output->eof_flag = 0;
   output->hfile = fp;
   return output;
}
