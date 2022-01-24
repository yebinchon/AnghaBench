#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct netplay_connection {int mode; } ;
typedef  int /*<<< orphan*/  netplay_t ;

/* Variables and functions */
 int NETPLAY_CONNECTION_CONNECTED ; 
#define  NETPLAY_CONNECTION_INIT 133 
#define  NETPLAY_CONNECTION_NONE 132 
#define  NETPLAY_CONNECTION_PRE_INFO 131 
#define  NETPLAY_CONNECTION_PRE_NICK 130 
#define  NETPLAY_CONNECTION_PRE_PASSWORD 129 
#define  NETPLAY_CONNECTION_PRE_SYNC 128 
 int FUNC0 (int /*<<< orphan*/ *,struct netplay_connection*,int*) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct netplay_connection*,int*) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct netplay_connection*,int*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct netplay_connection*,int*) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct netplay_connection*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct netplay_connection*) ; 

bool FUNC6(netplay_t *netplay,
   struct netplay_connection *connection, bool *had_input)
{
   bool ret = false;

   switch (connection->mode)
   {
      case NETPLAY_CONNECTION_INIT:
         ret = FUNC0(netplay, connection, had_input);
         break;
      case NETPLAY_CONNECTION_PRE_NICK:
         ret = FUNC2(netplay, connection, had_input);
         break;
      case NETPLAY_CONNECTION_PRE_PASSWORD:
         ret = FUNC3(netplay, connection, had_input);
         break;
      case NETPLAY_CONNECTION_PRE_INFO:
         ret = FUNC1(netplay, connection, had_input);
         break;
      case NETPLAY_CONNECTION_PRE_SYNC:
         ret = FUNC4(netplay, connection, had_input);
         break;
      case NETPLAY_CONNECTION_NONE:
      default:
         return false;
   }

   if (connection->mode >= NETPLAY_CONNECTION_CONNECTED &&
         !FUNC5(netplay, connection))
      return false;

   return ret;
}