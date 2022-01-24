#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct netplay_connection {int salt; int /*<<< orphan*/  fd; int /*<<< orphan*/  send_packet_buffer; } ;
struct TYPE_6__ {scalar_t__* netplay_spectate_password; scalar_t__* netplay_password; } ;
struct TYPE_7__ {TYPE_1__ paths; } ;
typedef  TYPE_2__ settings_t ;
struct TYPE_8__ {scalar_t__ is_server; } ;
typedef  TYPE_3__ netplay_t ;
typedef  int /*<<< orphan*/  header ;

/* Variables and functions */
 int NETPLAY_COMPRESSION_SUPPORTED ; 
 int NETPLAY_PROTOCOL_VERSION ; 
 TYPE_2__* FUNC0 () ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 () ; 
 int netplay_magic ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int simple_rand_next ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 

bool FUNC9(netplay_t *netplay,
   struct netplay_connection *connection)
{
   uint32_t header[6];
   settings_t *settings = FUNC0();

   header[0] = FUNC1(netplay_magic);
   header[1] = FUNC1(FUNC3());
   header[2] = FUNC1(NETPLAY_COMPRESSION_SUPPORTED);
   header[3] = 0;
   header[4] = FUNC1(NETPLAY_PROTOCOL_VERSION);
   header[5] = FUNC1(FUNC2());

   if (netplay->is_server &&
       (settings->paths.netplay_password[0] ||
        settings->paths.netplay_spectate_password[0]))
   {
      /* Demand a password */
      if (simple_rand_next == 1)
         FUNC7((unsigned int) FUNC8(NULL));
      connection->salt = FUNC6();
      if (connection->salt == 0)
         connection->salt = 1;
      header[3] = FUNC1(connection->salt);
   }
   else
   {
      header[3] = FUNC1(0);
   }

   if (!FUNC4(&connection->send_packet_buffer, connection->fd, header,
         sizeof(header)) ||
       !FUNC5(&connection->send_packet_buffer, connection->fd, false))
      return false;

   return true;
}