
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libretro_vfs_implementation_file ;
typedef int cdb ;
typedef int buf ;


 int DIRECTION_IN ;
 int cdrom_send_command (int *,int ,unsigned char*,int,unsigned char*,int,int ) ;
 int printf (char*,unsigned short,unsigned char,unsigned char) ;

bool cdrom_has_atip(libretro_vfs_implementation_file *stream)
{

   unsigned char cdb[] = {0x43, 0x2, 0x4, 0, 0, 0, 0, 0x9, 0x30, 0};
   unsigned char buf[32] = {0};
   unsigned short atip_len = 0;
   int rv = cdrom_send_command(stream, DIRECTION_IN, buf, sizeof(buf), cdb, sizeof(cdb), 0);

   if (rv)
     return 0;

   atip_len = buf[0] << 8 | buf[1];





   if (atip_len < 5)
      return 0;

   return 1;
}
