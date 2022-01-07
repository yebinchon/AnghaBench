
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct netplay_connection {scalar_t__ mode; scalar_t__ delay_frame; int nick; scalar_t__ active; } ;
typedef int payload ;
struct TYPE_4__ {unsigned int connections_size; scalar_t__ self_frame_count; int device_share_modes; struct netplay_connection* connections; } ;
typedef TYPE_1__ netplay_t ;


 int NETPLAY_CMD_MODE ;
 scalar_t__ NETPLAY_CONNECTION_DELAYED_DISCONNECT ;
 scalar_t__ NETPLAY_CONNECTION_NONE ;
 int NETPLAY_NICK_LEN ;
 scalar_t__ htonl (scalar_t__) ;
 int memcpy (scalar_t__*,int ,int) ;
 int netplay_send_raw_cmd_all (TYPE_1__*,struct netplay_connection*,int ,scalar_t__*,int) ;
 int strncpy (char*,int ,int ) ;

void netplay_delayed_state_change(netplay_t *netplay)
{
   unsigned i;

   for (i = 0; i < netplay->connections_size; i++)
   {
      uint32_t client_num = (uint32_t)(i + 1);
      struct netplay_connection *connection = &netplay->connections[i];

      if ((connection->active || connection->mode == NETPLAY_CONNECTION_DELAYED_DISCONNECT) &&
          connection->delay_frame &&
          connection->delay_frame <= netplay->self_frame_count)
      {

         uint32_t payload[15] = {0};
         payload[0] = htonl(connection->delay_frame);
         payload[1] = htonl(client_num);
         payload[2] = htonl(0);

         memcpy(payload + 3, netplay->device_share_modes, sizeof(netplay->device_share_modes));
         strncpy((char *) (payload + 7), connection->nick, NETPLAY_NICK_LEN);


         if (connection->mode == NETPLAY_CONNECTION_DELAYED_DISCONNECT)
            connection->mode = NETPLAY_CONNECTION_NONE;


         netplay_send_raw_cmd_all(netplay, connection, NETPLAY_CMD_MODE, payload, sizeof(payload));


         connection->delay_frame = 0;
      }
   }
}
