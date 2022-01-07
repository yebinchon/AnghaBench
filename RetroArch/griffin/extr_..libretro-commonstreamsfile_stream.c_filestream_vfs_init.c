
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct retro_vfs_interface_info {scalar_t__ required_interface_version; struct retro_vfs_interface* iface; } ;
struct retro_vfs_interface {int * rename; int * remove; int * flush; int * write; int * read; int * seek; int * tell; int * truncate; int * size; int * close; int * open; int * get_path; } ;


 scalar_t__ FILESTREAM_REQUIRED_VFS_VERSION ;
 int * filestream_close_cb ;
 int * filestream_flush_cb ;
 int * filestream_get_path_cb ;
 int * filestream_open_cb ;
 int * filestream_read_cb ;
 int * filestream_remove_cb ;
 int * filestream_rename_cb ;
 int * filestream_seek_cb ;
 int * filestream_size_cb ;
 int * filestream_tell_cb ;
 int * filestream_truncate_cb ;
 int * filestream_write_cb ;

void filestream_vfs_init(const struct retro_vfs_interface_info* vfs_info)
{
   const struct retro_vfs_interface* vfs_iface;

   filestream_get_path_cb = ((void*)0);
   filestream_open_cb = ((void*)0);
   filestream_close_cb = ((void*)0);
   filestream_tell_cb = ((void*)0);
   filestream_size_cb = ((void*)0);
   filestream_truncate_cb = ((void*)0);
   filestream_seek_cb = ((void*)0);
   filestream_read_cb = ((void*)0);
   filestream_write_cb = ((void*)0);
   filestream_flush_cb = ((void*)0);
   filestream_remove_cb = ((void*)0);
   filestream_rename_cb = ((void*)0);

   vfs_iface = vfs_info->iface;

   if (vfs_info->required_interface_version < FILESTREAM_REQUIRED_VFS_VERSION
         || !vfs_iface)
      return;

   filestream_get_path_cb = vfs_iface->get_path;
   filestream_open_cb = vfs_iface->open;
   filestream_close_cb = vfs_iface->close;
   filestream_size_cb = vfs_iface->size;
   filestream_truncate_cb = vfs_iface->truncate;
   filestream_tell_cb = vfs_iface->tell;
   filestream_seek_cb = vfs_iface->seek;
   filestream_read_cb = vfs_iface->read;
   filestream_write_cb = vfs_iface->write;
   filestream_flush_cb = vfs_iface->flush;
   filestream_remove_cb = vfs_iface->remove;
   filestream_rename_cb = vfs_iface->rename;
}
