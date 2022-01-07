
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int filestream_remove_cb (char const*) ;
 int retro_vfs_file_remove_impl (char const*) ;

int filestream_delete(const char *path)
{
   if (filestream_remove_cb != ((void*)0))
      return filestream_remove_cb(path);

   return retro_vfs_file_remove_impl(path);
}
