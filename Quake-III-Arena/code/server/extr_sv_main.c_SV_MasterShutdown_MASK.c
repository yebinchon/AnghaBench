#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int nextHeartbeatTime; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__ svs ; 

void FUNC1( void ) {
	// send a hearbeat right now
	svs.nextHeartbeatTime = -9999;
	FUNC0();

	// send it again to minimize chance of drops
	svs.nextHeartbeatTime = -9999;
	FUNC0();

	// when the master tries to poll the server, it won't respond, so
	// it will be removed from the list
}