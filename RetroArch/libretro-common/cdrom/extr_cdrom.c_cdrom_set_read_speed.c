
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libretro_vfs_implementation_file ;
typedef int cmd ;


 int DIRECTION_NONE ;
 int cdrom_send_command (int *,int ,int *,int ,unsigned char*,int,int ) ;

int cdrom_set_read_speed(libretro_vfs_implementation_file *stream, unsigned speed)
{

   unsigned char cmd[] = {0xBB, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};

   cmd[2] = (speed >> 24) & 0xFF;
   cmd[3] = (speed >> 16) & 0xFF;
   cmd[4] = (speed >> 8) & 0xFF;
   cmd[5] = speed & 0xFF;

   return cdrom_send_command(stream, DIRECTION_NONE, ((void*)0), 0, cmd, sizeof(cmd), 0);
}
