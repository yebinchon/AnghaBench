
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libretro_vfs_implementation_file ;
typedef int cdb ;


 int DIRECTION_NONE ;
 int cdrom_send_command (int *,int ,int *,int ,unsigned char*,int,int ) ;
 int fflush (int ) ;
 int printf (char*,int) ;
 int stdout ;

bool cdrom_is_media_inserted(libretro_vfs_implementation_file *stream)
{

   unsigned char cdb[] = {0x00, 0, 0, 0, 0, 0};
   int rv = cdrom_send_command(stream, DIRECTION_NONE, ((void*)0), 0, cdb, sizeof(cdb), 0);
   if (rv)
      return 0;

   return 1;
}
