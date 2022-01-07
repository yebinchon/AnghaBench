
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libretro_vfs_implementation_file ;
typedef int cdb ;


 int DIRECTION_IN ;
 int cdrom_send_command (int *,int ,unsigned char*,size_t,unsigned char*,int,int ) ;
 int fflush (int ) ;
 int printf (char*,...) ;
 int stdout ;

int cdrom_read_subq(libretro_vfs_implementation_file *stream, unsigned char *buf, size_t len)
{

   unsigned char cdb[] = {0x43, 0x2, 0x2, 0, 0, 0, 0x1, 0x9, 0x30, 0};






   int rv;

   if (!buf)
      return 1;

   rv = cdrom_send_command(stream, DIRECTION_IN, buf, len, cdb, sizeof(cdb), 0);

   if (rv)
     return 1;
   return 0;
}
