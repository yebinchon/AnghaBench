
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct retro_vfs_interface_info {scalar_t__ required_interface_version; struct retro_vfs_interface* iface; } ;
struct retro_vfs_interface {int mkdir; int stat; } ;


 scalar_t__ PATH_REQUIRED_VFS_VERSION ;
 int path_mkdir_cb ;
 int path_stat_cb ;
 int retro_vfs_mkdir_impl ;
 int retro_vfs_stat_impl ;

void path_vfs_init(const struct retro_vfs_interface_info* vfs_info)
{
   const struct retro_vfs_interface*
      vfs_iface = vfs_info->iface;

   path_stat_cb = retro_vfs_stat_impl;
   path_mkdir_cb = retro_vfs_mkdir_impl;

   if (vfs_info->required_interface_version < PATH_REQUIRED_VFS_VERSION || !vfs_iface)
      return;

   path_stat_cb = vfs_iface->stat;
   path_mkdir_cb = vfs_iface->mkdir;
}
