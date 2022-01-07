
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct retro_vfs_dir_handle {int dummy; } ;
struct RDIR {int dummy; } ;


 char const* dirent_dirent_get_name_cb (struct retro_vfs_dir_handle*) ;
 char const* retro_vfs_dirent_get_name_impl (struct retro_vfs_dir_handle*) ;

const char *retro_dirent_get_name(struct RDIR *rdir)
{
   if (dirent_dirent_get_name_cb != ((void*)0))
      return dirent_dirent_get_name_cb((struct retro_vfs_dir_handle *)rdir);
   return retro_vfs_dirent_get_name_impl((struct retro_vfs_dir_handle *)rdir);
}
