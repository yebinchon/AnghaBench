
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct retro_vfs_dir_handle {int dummy; } ;
struct RDIR {int dummy; } ;


 int dirent_dirent_is_dir_cb (struct retro_vfs_dir_handle*) ;
 int retro_vfs_dirent_is_dir_impl (struct retro_vfs_dir_handle*) ;

bool retro_dirent_is_dir(struct RDIR *rdir, const char *unused)
{
   if (dirent_dirent_is_dir_cb != ((void*)0))
      return dirent_dirent_is_dir_cb((struct retro_vfs_dir_handle *)rdir);
   return retro_vfs_dirent_is_dir_impl((struct retro_vfs_dir_handle *)rdir);
}
