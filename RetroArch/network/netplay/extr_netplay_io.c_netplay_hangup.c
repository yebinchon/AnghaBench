
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t uint32_t ;
struct netplay_connection {int active; scalar_t__ mode; scalar_t__ paused; int delay_frame; int recv_packet_buffer; int send_packet_buffer; int fd; scalar_t__* nick; } ;
struct TYPE_6__ {int is_connected; long connected_players; long self_client_num; long* device_clients; long connected_slaves; scalar_t__* client_devices; int * read_frame_count; struct netplay_connection* connections; int stall; int self_mode; scalar_t__ is_server; } ;
typedef TYPE_1__ netplay_t ;
typedef int msg ;
struct TYPE_7__ {int status; } ;
typedef TYPE_2__ discord_userdata_t ;


 int CMD_EVENT_DISCORD_UPDATE ;
 int DISCORD_PRESENCE_NETPLAY_NETPLAY_STOPPED ;
 size_t MAX_CLIENTS ;
 size_t MAX_INPUT_DEVICES ;
 int MESSAGE_QUEUE_CATEGORY_INFO ;
 int MESSAGE_QUEUE_ICON_DEFAULT ;
 int MSG_NETPLAY_CLIENT_HANGUP ;
 int MSG_NETPLAY_SERVER_HANGUP ;
 int MSG_NETPLAY_SERVER_NAMED_HANGUP ;
 scalar_t__ NETPLAY_CONNECTION_DELAYED_DISCONNECT ;
 int NETPLAY_CONNECTION_NONE ;
 scalar_t__ NETPLAY_CONNECTION_PLAYING ;
 scalar_t__ NETPLAY_CONNECTION_SLAVE ;
 int NETPLAY_STALL_NONE ;
 int RARCH_LOG (char*,char const*) ;
 int command_event (int ,TYPE_2__*) ;
 scalar_t__ discord_is_inited ;
 char* msg_hash_to_str (int ) ;
 int netplay_deinit_socket_buffer (int *) ;
 int remote_unpaused (TYPE_1__*,struct netplay_connection*) ;
 int runloop_msg_queue_push (char const*,int,int,int,int *,int ,int ) ;
 int snprintf (char*,int,char*,scalar_t__*) ;
 int socket_close (int ) ;

void netplay_hangup(netplay_t *netplay, struct netplay_connection *connection)
{
   char msg[512];
   const char *dmsg;
   size_t i;

   if (!netplay)
      return;
   if (!connection->active)
      return;

   msg[0] = msg[sizeof(msg)-1] = '\0';
   dmsg = msg;


   if (netplay->is_server)
   {
      if (connection->nick[0])
         snprintf(msg, sizeof(msg)-1, msg_hash_to_str(MSG_NETPLAY_SERVER_NAMED_HANGUP), connection->nick);
      else
         dmsg = msg_hash_to_str(MSG_NETPLAY_SERVER_HANGUP);
   }
   else
   {
      dmsg = msg_hash_to_str(MSG_NETPLAY_CLIENT_HANGUP);
      netplay->is_connected = 0;
   }
   RARCH_LOG("[netplay] %s\n", dmsg);
   runloop_msg_queue_push(dmsg, 1, 180, 0, ((void*)0), MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);

   socket_close(connection->fd);
   connection->active = 0;
   netplay_deinit_socket_buffer(&connection->send_packet_buffer);
   netplay_deinit_socket_buffer(&connection->recv_packet_buffer);

   if (!netplay->is_server)
   {
      netplay->self_mode = NETPLAY_CONNECTION_NONE;
      netplay->connected_players &= (1L<<netplay->self_client_num);
      for (i = 0; i < MAX_CLIENTS; i++)
      {
         if (i == netplay->self_client_num)
            continue;
         netplay->client_devices[i] = 0;
      }
      for (i = 0; i < MAX_INPUT_DEVICES; i++)
         netplay->device_clients[i] &= (1L<<netplay->self_client_num);
      netplay->stall = NETPLAY_STALL_NONE;

   }
   else
   {
      uint32_t client_num = (uint32_t)(connection - netplay->connections + 1);


      if (connection->mode == NETPLAY_CONNECTION_PLAYING ||
          connection->mode == NETPLAY_CONNECTION_SLAVE)
      {


         connection->mode = NETPLAY_CONNECTION_DELAYED_DISCONNECT;
         connection->delay_frame = netplay->read_frame_count[client_num];


         netplay->connected_players &= ~(1L<<client_num);
         netplay->connected_slaves &= ~(1L<<client_num);
         netplay->client_devices[client_num] = 0;
         for (i = 0; i < MAX_INPUT_DEVICES; i++)
            netplay->device_clients[i] &= ~(1L<<client_num);

      }

   }


   if (connection->paused)
      remote_unpaused(netplay, connection);
}
