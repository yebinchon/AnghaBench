
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct netplay_connection {int dummy; } ;
typedef int netplay_t ;
typedef int frames ;


 int NETPLAY_CMD_STALL ;
 int htonl (int ) ;
 int netplay_send_raw_cmd (int *,struct netplay_connection*,int ,int *,int) ;

bool netplay_cmd_stall(netplay_t *netplay,
   struct netplay_connection *connection,
   uint32_t frames)
{
   frames = htonl(frames);
   return netplay_send_raw_cmd(netplay, connection, NETPLAY_CMD_STALL, &frames, sizeof(frames));
}
