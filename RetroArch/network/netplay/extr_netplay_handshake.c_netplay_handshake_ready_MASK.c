#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct netplay_connection {char* nick; int /*<<< orphan*/  addr; } ;
struct TYPE_3__ {int connections; int quirks; int force_send_savestate; int is_connected; scalar_t__ stall; scalar_t__ is_server; } ;
typedef  TYPE_1__ netplay_t ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int /*<<< orphan*/  MESSAGE_QUEUE_CATEGORY_INFO ; 
 int /*<<< orphan*/  MESSAGE_QUEUE_ICON_DEFAULT ; 
 int /*<<< orphan*/  MSG_CONNECTED_TO ; 
 int /*<<< orphan*/  MSG_CONNECTION_SLOT ; 
 int NETPLAY_QUIRK_NO_SAVESTATES ; 
 int NETPLAY_QUIRK_NO_TRANSMISSION ; 
 scalar_t__ NETPLAY_STALL_NONE ; 
 scalar_t__ NETPLAY_STALL_NO_CONNECTION ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,...) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned int,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char*,char*) ; 

__attribute__((used)) static void FUNC5(netplay_t *netplay,
      struct netplay_connection *connection)
{
   char msg[512];
   msg[0] = '\0';

   if (netplay->is_server)
   {
      unsigned slot = (unsigned)(connection - netplay->connections);

      FUNC2(&connection->addr,
            slot, connection->nick, msg, sizeof(msg));

      FUNC0("%s %u\n", FUNC1(MSG_CONNECTION_SLOT), slot);

      /* Send them the savestate */
      if (!(netplay->quirks &
               (NETPLAY_QUIRK_NO_SAVESTATES|NETPLAY_QUIRK_NO_TRANSMISSION)))
         netplay->force_send_savestate = true;
   }
   else
   {
      netplay->is_connected = true;
      FUNC4(msg, sizeof(msg), "%s: \"%s\"",
            FUNC1(MSG_CONNECTED_TO),
            connection->nick);
   }

   FUNC0("%s\n", msg);
   FUNC3(msg, 1, 180, false, NULL, MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);

   /* Unstall if we were waiting for this */
   if (netplay->stall == NETPLAY_STALL_NO_CONNECTION)
       netplay->stall = NETPLAY_STALL_NONE;
}