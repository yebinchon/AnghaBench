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
typedef  int /*<<< orphan*/  uint32_t ;
struct netplay_connection {int dummy; } ;
typedef  int /*<<< orphan*/  netplay_t ;
typedef  int /*<<< orphan*/  frames ;

/* Variables and functions */
 int /*<<< orphan*/  NETPLAY_CMD_STALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct netplay_connection*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

bool FUNC2(netplay_t *netplay,
   struct netplay_connection *connection,
   uint32_t frames)
{
   frames = FUNC0(frames);
   return FUNC1(netplay, connection, NETPLAY_CMD_STALL, &frames, sizeof(frames));
}