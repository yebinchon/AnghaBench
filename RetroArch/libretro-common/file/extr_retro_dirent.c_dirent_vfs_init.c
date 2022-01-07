
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct retro_vfs_interface_info {scalar_t__ required_interface_version; struct retro_vfs_interface* iface; } ;
struct retro_vfs_interface {int * closedir; int * dirent_is_dir; int * dirent_get_name; int * readdir; int * opendir; } ;


 scalar_t__ DIRENT_REQUIRED_VFS_VERSION ;
 int * dirent_closedir_cb ;
 int * dirent_dirent_get_name_cb ;
 int * dirent_dirent_is_dir_cb ;
 int * dirent_opendir_cb ;
 int * dirent_readdir_cb ;

void dirent_vfs_init(const struct retro_vfs_interface_info* vfs_info)
{
   const struct retro_vfs_interface* vfs_iface;

   dirent_opendir_cb = ((void*)0);
   dirent_readdir_cb = ((void*)0);
   dirent_dirent_get_name_cb = ((void*)0);
   dirent_dirent_is_dir_cb = ((void*)0);
   dirent_closedir_cb = ((void*)0);

   vfs_iface = vfs_info->iface;

   if (vfs_info->required_interface_version < DIRENT_REQUIRED_VFS_VERSION || !vfs_iface)
      return;

   dirent_opendir_cb = vfs_iface->opendir;
   dirent_readdir_cb = vfs_iface->readdir;
   dirent_dirent_get_name_cb = vfs_iface->dirent_get_name;
   dirent_dirent_is_dir_cb = vfs_iface->dirent_is_dir;
   dirent_closedir_cb = vfs_iface->closedir;
}
