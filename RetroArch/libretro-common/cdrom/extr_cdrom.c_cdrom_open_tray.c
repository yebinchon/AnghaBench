
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libretro_vfs_implementation_file ;
typedef int cdb ;


 int DIRECTION_NONE ;
 int cdrom_send_command (int *,int ,int *,int ,unsigned char*,int,int ) ;
 int cdrom_stop (int *) ;
 int cdrom_unlock (int *) ;
 int fflush (int ) ;
 int printf (char*,int) ;
 int stdout ;

int cdrom_open_tray(libretro_vfs_implementation_file *stream)
{

   unsigned char cdb[] = {0x1B, 0, 0, 0, 0x2, 0};
   int rv;

   cdrom_unlock(stream);
   cdrom_stop(stream);

   rv = cdrom_send_command(stream, DIRECTION_NONE, ((void*)0), 0, cdb, sizeof(cdb), 0);






   if (rv)
      return 1;

   return 0;
}
