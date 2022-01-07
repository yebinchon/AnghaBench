
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct retro_vfs_dir_handle {int dummy; } ;
struct RDIR {int dummy; } ;


 int dirent_readdir_cb (struct retro_vfs_dir_handle*) ;
 int retro_vfs_readdir_impl (struct retro_vfs_dir_handle*) ;

int retro_readdir(struct RDIR *rdir)
{
   if (dirent_readdir_cb != ((void*)0))
      return dirent_readdir_cb((struct retro_vfs_dir_handle *)rdir);
   return retro_vfs_readdir_impl((struct retro_vfs_dir_handle *)rdir);
}
