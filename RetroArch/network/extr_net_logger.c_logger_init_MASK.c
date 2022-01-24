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
struct TYPE_3__ {unsigned int port; char const* server; int /*<<< orphan*/  domain; } ;
typedef  TYPE_1__ socket_target_t ;

/* Variables and functions */
 char* PC_DEVELOPMENT_IP_ADDRESS ; 
 unsigned int PC_DEVELOPMENT_UDP_PORT ; 
 int /*<<< orphan*/  SOCKET_DOMAIN_INET ; 
 int /*<<< orphan*/  SOCKET_PROTOCOL_NONE ; 
 int /*<<< orphan*/  SOCKET_TYPE_DATAGRAM ; 
 int /*<<< orphan*/  g_sid ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  target ; 

void FUNC4 (void)
{
   socket_target_t in_target;
   const char *server = PC_DEVELOPMENT_IP_ADDRESS;
   unsigned      port = PC_DEVELOPMENT_UDP_PORT;

   if (!FUNC0())
   {
      FUNC1("Could not initialize network logger interface.\n");
      return;
   }

   g_sid  = FUNC2(
         "ra_netlogger",
         SOCKET_DOMAIN_INET,
         SOCKET_TYPE_DATAGRAM,
         SOCKET_PROTOCOL_NONE);

   in_target.port   = port;
   in_target.server = server;
   in_target.domain = SOCKET_DOMAIN_INET;

   FUNC3(&target, &in_target);
}