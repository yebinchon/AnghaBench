
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int filestream_rename_cb (char const*,char const*) ;
 int retro_vfs_file_rename_impl (char const*,char const*) ;

int filestream_rename(const char *old_path, const char *new_path)
{
   if (filestream_rename_cb != ((void*)0))
      return filestream_rename_cb(old_path, new_path);

   return retro_vfs_file_rename_impl(old_path, new_path);
}
