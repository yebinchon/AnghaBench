
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct retro_vfs_dir_handle {int dummy; } ;
struct RDIR {int dummy; } ;


 int dirent_closedir_cb (struct retro_vfs_dir_handle*) ;
 int retro_vfs_closedir_impl (struct retro_vfs_dir_handle*) ;

void retro_closedir(struct RDIR *rdir)
{
   if (dirent_closedir_cb != ((void*)0))
      dirent_closedir_cb((struct retro_vfs_dir_handle *)rdir);
   else
      retro_vfs_closedir_impl((struct retro_vfs_dir_handle *)rdir);
}
