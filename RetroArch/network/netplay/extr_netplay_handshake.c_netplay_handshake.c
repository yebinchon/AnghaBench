
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netplay_connection {int mode; } ;
typedef int netplay_t ;


 int NETPLAY_CONNECTION_CONNECTED ;






 int netplay_handshake_init (int *,struct netplay_connection*,int*) ;
 int netplay_handshake_pre_info (int *,struct netplay_connection*,int*) ;
 int netplay_handshake_pre_nick (int *,struct netplay_connection*,int*) ;
 int netplay_handshake_pre_password (int *,struct netplay_connection*,int*) ;
 int netplay_handshake_pre_sync (int *,struct netplay_connection*,int*) ;
 int netplay_send_cur_input (int *,struct netplay_connection*) ;

bool netplay_handshake(netplay_t *netplay,
   struct netplay_connection *connection, bool *had_input)
{
   bool ret = 0;

   switch (connection->mode)
   {
      case 133:
         ret = netplay_handshake_init(netplay, connection, had_input);
         break;
      case 130:
         ret = netplay_handshake_pre_nick(netplay, connection, had_input);
         break;
      case 129:
         ret = netplay_handshake_pre_password(netplay, connection, had_input);
         break;
      case 131:
         ret = netplay_handshake_pre_info(netplay, connection, had_input);
         break;
      case 128:
         ret = netplay_handshake_pre_sync(netplay, connection, had_input);
         break;
      case 132:
      default:
         return 0;
   }

   if (connection->mode >= NETPLAY_CONNECTION_CONNECTED &&
         !netplay_send_cur_input(netplay, connection))
      return 0;

   return ret;
}
