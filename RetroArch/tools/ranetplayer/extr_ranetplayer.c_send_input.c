
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int EXPAND () ;
 int NETPLAY_CMD_INFO ;
 int SEND () ;
 int cmd ;
 int cmd_size ;
 scalar_t__ frame_offset ;
 scalar_t__ frame_offset_cmd (int) ;
 int ntohl (int) ;
 int* payload ;
 int ranp_in ;
 int read (int ,int*,int) ;

bool send_input(uint32_t cur_frame)
{
   while (1)
   {
      uint32_t rd_frame = 0;

      if (read(ranp_in, &cmd, sizeof(uint32_t)) != sizeof(uint32_t) ||
          read(ranp_in, &cmd_size, sizeof(uint32_t)) != sizeof(uint32_t))
         return 0;

      cmd = ntohl(cmd);
      cmd_size = ntohl(cmd_size);
      EXPAND();

      if (read(ranp_in, payload, cmd_size) != cmd_size)
         return 0;


      if (cmd == NETPLAY_CMD_INFO)
         continue;


      rd_frame = frame_offset_cmd(0);
      if (rd_frame)
         rd_frame -= frame_offset;


      SEND();

      if (rd_frame > cur_frame)
         break;
   }

   return 1;
}
