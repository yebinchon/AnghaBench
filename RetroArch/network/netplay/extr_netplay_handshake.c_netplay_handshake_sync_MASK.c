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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct netplay_connection {char* nick; scalar_t__ mode; int /*<<< orphan*/  fd; int /*<<< orphan*/  send_packet_buffer; scalar_t__ active; } ;
struct TYPE_6__ {int size; int* data; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ retro_ctx_memory_info_t ;
struct TYPE_7__ {int self_frame_count; int* config_devices; int* device_share_modes; int* device_clients; size_t connections_size; char* nick; struct netplay_connection* connections; scalar_t__ remote_paused; scalar_t__ local_paused; } ;
typedef  TYPE_2__ netplay_t ;
typedef  int /*<<< orphan*/  device ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int MAX_INPUT_DEVICES ; 
 int NETPLAY_CMD_SYNC ; 
 int NETPLAY_CMD_SYNC_BIT_PAUSED ; 
 scalar_t__ NETPLAY_CONNECTION_CONNECTED ; 
 scalar_t__ NETPLAY_CONNECTION_SPECTATING ; 
 int NETPLAY_NICK_LEN ; 
 int /*<<< orphan*/  RETRO_MEMORY_SAVE_RAM ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,struct netplay_connection*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,int) ; 
 size_t FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int) ; 

bool FUNC10(netplay_t *netplay,
      struct netplay_connection *connection)
{
   /* If we're the server, now we send sync info */
   size_t i;
   int matchct;
   uint32_t cmd[4];
   retro_ctx_memory_info_t mem_info;
   uint32_t client_num        = 0;
   uint32_t device            = 0;
   size_t nicklen, nickmangle = 0;
   bool nick_matched          = false;

#ifdef HAVE_THREADS
   autosave_lock();
#endif
   mem_info.id = RETRO_MEMORY_SAVE_RAM;
   FUNC2(&mem_info);
#ifdef HAVE_THREADS
   autosave_unlock();
#endif

   /* Send basic sync info */
   cmd[0]     = FUNC3(NETPLAY_CMD_SYNC);
   cmd[1]     = FUNC3(2*sizeof(uint32_t)
         /* Controller devices */
         + MAX_INPUT_DEVICES*sizeof(uint32_t)

         /* Share modes */
         + MAX_INPUT_DEVICES*sizeof(uint8_t)

         /* Device-client mapping */
         + MAX_INPUT_DEVICES*sizeof(uint32_t)

         /* Client nick */
         + NETPLAY_NICK_LEN

         /* And finally, sram */
         + mem_info.size);
   cmd[2]     = FUNC3(netplay->self_frame_count);
   client_num = (uint32_t)(connection - netplay->connections + 1);

   if (netplay->local_paused || netplay->remote_paused)
      client_num |= NETPLAY_CMD_SYNC_BIT_PAUSED;

   cmd[3]     = FUNC3(client_num);

   if (!FUNC5(&connection->send_packet_buffer, connection->fd, cmd,
            sizeof(cmd)))
      return false;

   /* Now send the device info */
   for (i = 0; i < MAX_INPUT_DEVICES; i++)
   {
      device = FUNC3(netplay->config_devices[i]);
      if (!FUNC5(&connection->send_packet_buffer, connection->fd,
            &device, sizeof(device)))
         return false;
   }

   /* Then the share mode */
   if (!FUNC5(&connection->send_packet_buffer, connection->fd,
         netplay->device_share_modes, sizeof(netplay->device_share_modes)))
      return false;

   /* Then the device-client mapping */
   for (i = 0; i < MAX_INPUT_DEVICES; i++)
   {
      device = FUNC3(netplay->device_clients[i]);
      if (!FUNC5(&connection->send_packet_buffer, connection->fd,
            &device, sizeof(device)))
         return false;
   }

   /* Now see if we need to mangle their nick */
   nicklen = FUNC8(connection->nick);
   if (nicklen > NETPLAY_NICK_LEN - 5)
      nickmangle = NETPLAY_NICK_LEN - 5;
   else
      nickmangle = nicklen;
   matchct = 1;
   do
   {
      nick_matched = false;
      for (i = 0; i < netplay->connections_size; i++)
      {
         struct netplay_connection *sc = &netplay->connections[i];
         if (sc == connection)
            continue;
         if (sc->active &&
               sc->mode >= NETPLAY_CONNECTION_CONNECTED &&
               !FUNC9(connection->nick, sc->nick, NETPLAY_NICK_LEN))
         {
            nick_matched = true;
            break;
         }
      }
      if (!FUNC9(connection->nick, netplay->nick, NETPLAY_NICK_LEN))
         nick_matched = true;

      if (nick_matched)
      {
         /* Somebody has this nick, make a new one! */
         FUNC7(connection->nick + nickmangle,
               NETPLAY_NICK_LEN - nickmangle, " (%d)", ++matchct);
         connection->nick[NETPLAY_NICK_LEN - 1] = '\0';
      }
   } while (nick_matched);

   /* Send the nick */
   if (!FUNC5(&connection->send_packet_buffer, connection->fd,
         connection->nick, NETPLAY_NICK_LEN))
      return false;

   /* And finally, the SRAM */
#ifdef HAVE_THREADS
   autosave_lock();
#endif
   if (!FUNC5(&connection->send_packet_buffer, connection->fd,
            mem_info.data, mem_info.size) ||
         !FUNC6(&connection->send_packet_buffer, connection->fd,
            false))
   {
#ifdef HAVE_THREADS
      autosave_unlock();
#endif
      return false;
   }
#ifdef HAVE_THREADS
   autosave_unlock();
#endif

   /* Now we're ready! */
   connection->mode = NETPLAY_CONNECTION_SPECTATING;
   FUNC4(netplay, connection);

   return true;
}