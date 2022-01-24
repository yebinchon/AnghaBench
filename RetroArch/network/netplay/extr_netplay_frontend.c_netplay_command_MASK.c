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
struct netplay_connection {int dummy; } ;
typedef  int /*<<< orphan*/  netplay_t ;
typedef  enum netplay_cmd { ____Placeholder_netplay_cmd } netplay_cmd ;

/* Variables and functions */
 int /*<<< orphan*/  MESSAGE_QUEUE_CATEGORY_INFO ; 
 int /*<<< orphan*/  MESSAGE_QUEUE_ICON_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct netplay_connection*,int,void*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC3(netplay_t* netplay, struct netplay_connection *connection,
   enum netplay_cmd cmd, void* data, size_t sz, const char* command_str,
   const char* success_msg)
{
   FUNC1(netplay);

   if (!FUNC0(netplay, connection, cmd, data, sz))
      return false;

   FUNC2(success_msg, 1, 180, false, NULL, MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);

   return true;
}