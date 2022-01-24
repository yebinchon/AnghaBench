#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct netplay_connection {int active; scalar_t__ mode; scalar_t__ paused; int /*<<< orphan*/  delay_frame; int /*<<< orphan*/  recv_packet_buffer; int /*<<< orphan*/  send_packet_buffer; int /*<<< orphan*/  fd; scalar_t__* nick; } ;
struct TYPE_6__ {int is_connected; long connected_players; long self_client_num; long* device_clients; long connected_slaves; scalar_t__* client_devices; int /*<<< orphan*/ * read_frame_count; struct netplay_connection* connections; int /*<<< orphan*/  stall; int /*<<< orphan*/  self_mode; scalar_t__ is_server; } ;
typedef  TYPE_1__ netplay_t ;
typedef  int /*<<< orphan*/  msg ;
struct TYPE_7__ {int /*<<< orphan*/  status; } ;
typedef  TYPE_2__ discord_userdata_t ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_EVENT_DISCORD_UPDATE ; 
 int /*<<< orphan*/  DISCORD_PRESENCE_NETPLAY_NETPLAY_STOPPED ; 
 size_t MAX_CLIENTS ; 
 size_t MAX_INPUT_DEVICES ; 
 int /*<<< orphan*/  MESSAGE_QUEUE_CATEGORY_INFO ; 
 int /*<<< orphan*/  MESSAGE_QUEUE_ICON_DEFAULT ; 
 int /*<<< orphan*/  MSG_NETPLAY_CLIENT_HANGUP ; 
 int /*<<< orphan*/  MSG_NETPLAY_SERVER_HANGUP ; 
 int /*<<< orphan*/  MSG_NETPLAY_SERVER_NAMED_HANGUP ; 
 scalar_t__ NETPLAY_CONNECTION_DELAYED_DISCONNECT ; 
 int /*<<< orphan*/  NETPLAY_CONNECTION_NONE ; 
 scalar_t__ NETPLAY_CONNECTION_PLAYING ; 
 scalar_t__ NETPLAY_CONNECTION_SLAVE ; 
 int /*<<< orphan*/  NETPLAY_STALL_NONE ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ discord_is_inited ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct netplay_connection*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(netplay_t *netplay, struct netplay_connection *connection)
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

   /* Report this disconnection */
   if (netplay->is_server)
   {
      if (connection->nick[0])
         FUNC6(msg, sizeof(msg)-1, FUNC2(MSG_NETPLAY_SERVER_NAMED_HANGUP), connection->nick);
      else
         dmsg = FUNC2(MSG_NETPLAY_SERVER_HANGUP);
   }
   else
   {
      dmsg = FUNC2(MSG_NETPLAY_CLIENT_HANGUP);
#ifdef HAVE_DISCORD
      if (discord_is_inited)
      {
         discord_userdata_t userdata;
         userdata.status = DISCORD_PRESENCE_NETPLAY_NETPLAY_STOPPED;
         command_event(CMD_EVENT_DISCORD_UPDATE, &userdata);
      }
#endif
      netplay->is_connected = false;
   }
   FUNC0("[netplay] %s\n", dmsg);
   FUNC5(dmsg, 1, 180, false, NULL, MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);

   FUNC7(connection->fd);
   connection->active = false;
   FUNC3(&connection->send_packet_buffer);
   FUNC3(&connection->recv_packet_buffer);

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

      /* Mark the player for removal */
      if (connection->mode == NETPLAY_CONNECTION_PLAYING ||
          connection->mode == NETPLAY_CONNECTION_SLAVE)
      {
         /* This special mode keeps the connection object alive long enough to
          * send the disconnection message at the correct time */
         connection->mode = NETPLAY_CONNECTION_DELAYED_DISCONNECT;
         connection->delay_frame = netplay->read_frame_count[client_num];

         /* Mark them as not playing anymore */
         netplay->connected_players &= ~(1L<<client_num);
         netplay->connected_slaves  &= ~(1L<<client_num);
         netplay->client_devices[client_num] = 0;
         for (i = 0; i < MAX_INPUT_DEVICES; i++)
            netplay->device_clients[i] &= ~(1L<<client_num);

      }

   }

   /* Unpause them */
   if (connection->paused)
      FUNC4(netplay, connection);
}