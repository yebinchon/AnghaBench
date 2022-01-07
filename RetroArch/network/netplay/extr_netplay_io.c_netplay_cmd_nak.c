
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netplay_connection {int dummy; } ;
typedef int netplay_t ;


 int NETPLAY_CMD_NAK ;
 int netplay_send_raw_cmd (int *,struct netplay_connection*,int ,int *,int ) ;

__attribute__((used)) static bool netplay_cmd_nak(netplay_t *netplay,
   struct netplay_connection *connection)
{
   netplay_send_raw_cmd(netplay, connection, NETPLAY_CMD_NAK, ((void*)0), 0);
   return 0;
}
