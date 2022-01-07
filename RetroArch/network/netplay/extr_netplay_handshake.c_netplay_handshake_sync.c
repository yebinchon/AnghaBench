
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct netplay_connection {char* nick; scalar_t__ mode; int fd; int send_packet_buffer; scalar_t__ active; } ;
struct TYPE_6__ {int size; int* data; int id; } ;
typedef TYPE_1__ retro_ctx_memory_info_t ;
struct TYPE_7__ {int self_frame_count; int* config_devices; int* device_share_modes; int* device_clients; size_t connections_size; char* nick; struct netplay_connection* connections; scalar_t__ remote_paused; scalar_t__ local_paused; } ;
typedef TYPE_2__ netplay_t ;
typedef int device ;
typedef int cmd ;


 int MAX_INPUT_DEVICES ;
 int NETPLAY_CMD_SYNC ;
 int NETPLAY_CMD_SYNC_BIT_PAUSED ;
 scalar_t__ NETPLAY_CONNECTION_CONNECTED ;
 scalar_t__ NETPLAY_CONNECTION_SPECTATING ;
 int NETPLAY_NICK_LEN ;
 int RETRO_MEMORY_SAVE_RAM ;
 int autosave_lock () ;
 int autosave_unlock () ;
 int core_get_memory (TYPE_1__*) ;
 int htonl (int) ;
 int netplay_handshake_ready (TYPE_2__*,struct netplay_connection*) ;
 int netplay_send (int *,int ,int*,int) ;
 int netplay_send_flush (int *,int ,int) ;
 int snprintf (char*,int,char*,int) ;
 size_t strlen (char*) ;
 int strncmp (char*,char*,int) ;

bool netplay_handshake_sync(netplay_t *netplay,
      struct netplay_connection *connection)
{

   size_t i;
   int matchct;
   uint32_t cmd[4];
   retro_ctx_memory_info_t mem_info;
   uint32_t client_num = 0;
   uint32_t device = 0;
   size_t nicklen, nickmangle = 0;
   bool nick_matched = 0;




   mem_info.id = RETRO_MEMORY_SAVE_RAM;
   core_get_memory(&mem_info);





   cmd[0] = htonl(NETPLAY_CMD_SYNC);
   cmd[1] = htonl(2*sizeof(uint32_t)

         + MAX_INPUT_DEVICES*sizeof(uint32_t)


         + MAX_INPUT_DEVICES*sizeof(uint8_t)


         + MAX_INPUT_DEVICES*sizeof(uint32_t)


         + NETPLAY_NICK_LEN


         + mem_info.size);
   cmd[2] = htonl(netplay->self_frame_count);
   client_num = (uint32_t)(connection - netplay->connections + 1);

   if (netplay->local_paused || netplay->remote_paused)
      client_num |= NETPLAY_CMD_SYNC_BIT_PAUSED;

   cmd[3] = htonl(client_num);

   if (!netplay_send(&connection->send_packet_buffer, connection->fd, cmd,
            sizeof(cmd)))
      return 0;


   for (i = 0; i < MAX_INPUT_DEVICES; i++)
   {
      device = htonl(netplay->config_devices[i]);
      if (!netplay_send(&connection->send_packet_buffer, connection->fd,
            &device, sizeof(device)))
         return 0;
   }


   if (!netplay_send(&connection->send_packet_buffer, connection->fd,
         netplay->device_share_modes, sizeof(netplay->device_share_modes)))
      return 0;


   for (i = 0; i < MAX_INPUT_DEVICES; i++)
   {
      device = htonl(netplay->device_clients[i]);
      if (!netplay_send(&connection->send_packet_buffer, connection->fd,
            &device, sizeof(device)))
         return 0;
   }


   nicklen = strlen(connection->nick);
   if (nicklen > NETPLAY_NICK_LEN - 5)
      nickmangle = NETPLAY_NICK_LEN - 5;
   else
      nickmangle = nicklen;
   matchct = 1;
   do
   {
      nick_matched = 0;
      for (i = 0; i < netplay->connections_size; i++)
      {
         struct netplay_connection *sc = &netplay->connections[i];
         if (sc == connection)
            continue;
         if (sc->active &&
               sc->mode >= NETPLAY_CONNECTION_CONNECTED &&
               !strncmp(connection->nick, sc->nick, NETPLAY_NICK_LEN))
         {
            nick_matched = 1;
            break;
         }
      }
      if (!strncmp(connection->nick, netplay->nick, NETPLAY_NICK_LEN))
         nick_matched = 1;

      if (nick_matched)
      {

         snprintf(connection->nick + nickmangle,
               NETPLAY_NICK_LEN - nickmangle, " (%d)", ++matchct);
         connection->nick[NETPLAY_NICK_LEN - 1] = '\0';
      }
   } while (nick_matched);


   if (!netplay_send(&connection->send_packet_buffer, connection->fd,
         connection->nick, NETPLAY_NICK_LEN))
      return 0;





   if (!netplay_send(&connection->send_packet_buffer, connection->fd,
            mem_info.data, mem_info.size) ||
         !netplay_send_flush(&connection->send_packet_buffer, connection->fd,
            0))
   {



      return 0;
   }





   connection->mode = NETPLAY_CONNECTION_SPECTATING;
   netplay_handshake_ready(netplay, connection);

   return 1;
}
