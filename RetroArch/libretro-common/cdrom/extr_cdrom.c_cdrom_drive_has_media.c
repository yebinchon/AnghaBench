
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libretro_vfs_implementation_file ;
typedef int cdrom_path_bin ;
typedef int RFILE ;


 int RETRO_VFS_FILE_ACCESS_READ ;
 int cdrom_device_fillpath (char*,int,char const,int,int) ;
 int cdrom_is_media_inserted (int *) ;
 int filestream_close (int *) ;
 int * filestream_get_vfs_handle (int *) ;
 int * filestream_open (char*,int ,int ) ;

bool cdrom_drive_has_media(const char drive)
{
   RFILE *file;
   char cdrom_path_bin[256] = {0};

   cdrom_device_fillpath(cdrom_path_bin, sizeof(cdrom_path_bin), drive, 1, 0);

   file = filestream_open(cdrom_path_bin, RETRO_VFS_FILE_ACCESS_READ, 0);

   if (file)
   {
      libretro_vfs_implementation_file *stream = filestream_get_vfs_handle(file);
      bool has_media = 0;

      has_media = cdrom_is_media_inserted(stream);

      filestream_close(file);

      return has_media;
   }

   return 0;
}
