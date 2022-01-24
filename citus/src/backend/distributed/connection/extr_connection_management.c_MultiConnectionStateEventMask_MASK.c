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
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_3__ {scalar_t__ pollmode; } ;
typedef  TYPE_1__ MultiConnectionPollState ;

/* Variables and functions */
 scalar_t__ PGRES_POLLING_READING ; 
 int /*<<< orphan*/  WL_SOCKET_READABLE ; 
 int /*<<< orphan*/  WL_SOCKET_WRITEABLE ; 

__attribute__((used)) static uint32
FUNC0(MultiConnectionPollState *connectionState)
{
	uint32 eventMask = 0;
	if (connectionState->pollmode == PGRES_POLLING_READING)
	{
		eventMask |= WL_SOCKET_READABLE;
	}
	else
	{
		eventMask |= WL_SOCKET_WRITEABLE;
	}
	return eventMask;
}