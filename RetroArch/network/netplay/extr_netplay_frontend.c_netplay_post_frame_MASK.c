#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct netplay_connection {scalar_t__ active; int /*<<< orphan*/  fd; int /*<<< orphan*/  send_packet_buffer; } ;
struct TYPE_8__ {size_t connections_size; struct netplay_connection* connections; int /*<<< orphan*/  is_server; } ;
typedef  TYPE_1__ netplay_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct netplay_connection*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

void FUNC6(netplay_t *netplay)
{
   size_t i;
   FUNC5(netplay);
   FUNC4(netplay);
   FUNC3(netplay, false);

   for (i = 0; i < netplay->connections_size; i++)
   {
      struct netplay_connection *connection = &netplay->connections[i];
      if (connection->active &&
          !FUNC2(&connection->send_packet_buffer, connection->fd,
            false))
         FUNC1(netplay, connection);
   }

   /* If we're disconnected, deinitialize */
   if (!netplay->is_server && !netplay->connections[0].active)
      FUNC0(netplay);
}