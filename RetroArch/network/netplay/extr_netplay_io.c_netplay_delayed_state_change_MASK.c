#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct netplay_connection {scalar_t__ mode; scalar_t__ delay_frame; int /*<<< orphan*/  nick; scalar_t__ active; } ;
typedef  int /*<<< orphan*/  payload ;
struct TYPE_4__ {unsigned int connections_size; scalar_t__ self_frame_count; int /*<<< orphan*/  device_share_modes; struct netplay_connection* connections; } ;
typedef  TYPE_1__ netplay_t ;

/* Variables and functions */
 int /*<<< orphan*/  NETPLAY_CMD_MODE ; 
 scalar_t__ NETPLAY_CONNECTION_DELAYED_DISCONNECT ; 
 scalar_t__ NETPLAY_CONNECTION_NONE ; 
 int /*<<< orphan*/  NETPLAY_NICK_LEN ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct netplay_connection*,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(netplay_t *netplay)
{
   unsigned i;

   for (i = 0; i < netplay->connections_size; i++)
   {
      uint32_t client_num                   = (uint32_t)(i + 1);
      struct netplay_connection *connection = &netplay->connections[i];

      if ((connection->active || connection->mode == NETPLAY_CONNECTION_DELAYED_DISCONNECT) &&
          connection->delay_frame &&
          connection->delay_frame <= netplay->self_frame_count)
      {
         /* Something was delayed! Prepare the MODE command */
         uint32_t payload[15] = {0};
         payload[0]           = FUNC0(connection->delay_frame);
         payload[1]           = FUNC0(client_num);
         payload[2]           = FUNC0(0);

         FUNC1(payload + 3, netplay->device_share_modes, sizeof(netplay->device_share_modes));
         FUNC3((char *) (payload + 7), connection->nick, NETPLAY_NICK_LEN);

         /* Remove the connection entirely if relevant */
         if (connection->mode == NETPLAY_CONNECTION_DELAYED_DISCONNECT)
            connection->mode = NETPLAY_CONNECTION_NONE;

         /* Then send the mode change packet */
         FUNC2(netplay, connection, NETPLAY_CMD_MODE, payload, sizeof(payload));

         /* And forget the delay frame */
         connection->delay_frame = 0;
      }
   }
}