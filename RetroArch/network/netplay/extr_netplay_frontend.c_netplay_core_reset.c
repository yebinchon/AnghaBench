
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct netplay_connection {scalar_t__ mode; int fd; int send_packet_buffer; int active; } ;
struct TYPE_5__ {int self_frame_count; size_t connections_size; struct netplay_connection* connections; } ;
typedef TYPE_1__ netplay_t ;
typedef int cmd ;


 int NETPLAY_CMD_RESET ;
 scalar_t__ NETPLAY_CONNECTION_CONNECTED ;
 int htonl (int) ;
 int netplay_force_future (TYPE_1__*) ;
 int netplay_hangup (TYPE_1__*,struct netplay_connection*) ;
 int netplay_send (int *,int ,int *,int) ;

__attribute__((used)) static void netplay_core_reset(netplay_t *netplay)
{
   uint32_t cmd[3];
   size_t i;


   netplay_force_future(netplay);


   cmd[0] = htonl(NETPLAY_CMD_RESET);
   cmd[1] = htonl(sizeof(uint32_t));
   cmd[2] = htonl(netplay->self_frame_count);

   for (i = 0; i < netplay->connections_size; i++)
   {
      struct netplay_connection *connection = &netplay->connections[i];
      if (!connection->active ||
            connection->mode < NETPLAY_CONNECTION_CONNECTED) continue;

      if (!netplay_send(&connection->send_packet_buffer, connection->fd, cmd,
               sizeof(cmd)))
         netplay_hangup(netplay, connection);
   }
}
