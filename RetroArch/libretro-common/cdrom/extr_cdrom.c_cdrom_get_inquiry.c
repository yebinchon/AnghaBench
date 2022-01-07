
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libretro_vfs_implementation_file ;
typedef int cdb ;
typedef int buf ;


 int DIRECTION_IN ;
 int cdrom_send_command (int *,int ,unsigned char*,int,unsigned char*,int,int ) ;
 int memcpy (char*,unsigned char*,int) ;
 int memset (char*,int ,int) ;
 int printf (char*,char*,char*) ;

int cdrom_get_inquiry(libretro_vfs_implementation_file *stream, char *model, int len, bool *is_cdrom)
{

   unsigned char cdb[] = {0x12, 0, 0, 0, 0xff, 0};
   unsigned char buf[256] = {0};
   int rv = cdrom_send_command(stream, DIRECTION_IN, buf, sizeof(buf), cdb, sizeof(cdb), 0);
   bool cdrom = 0;

   if (rv)
      return 1;

   if (model && len >= 32)
   {
      memset(model, 0, len);


      memcpy(model, buf + 8, 8);

      model[8] = ' ';


      memcpy(model + 9, buf + 16, 16);

      model[25] = ' ';


      memcpy(model + 26, buf + 32, 4);
   }

   cdrom = (buf[0] == 5);

   if (is_cdrom && cdrom)
      *is_cdrom = 1;




   return 0;
}
