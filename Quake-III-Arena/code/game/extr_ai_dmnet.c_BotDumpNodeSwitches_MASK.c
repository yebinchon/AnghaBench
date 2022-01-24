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
typedef  int /*<<< orphan*/  netname ;
struct TYPE_3__ {int /*<<< orphan*/  client; } ;
typedef  TYPE_1__ bot_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int MAX_NETNAME ; 
 int /*<<< orphan*/  MAX_NODESWITCHES ; 
 int /*<<< orphan*/  PRT_FATAL ; 
 int /*<<< orphan*/  PRT_MESSAGE ; 
 char** nodeswitch ; 
 int numnodeswitches ; 

void FUNC3(bot_state_t *bs) {
	int i;
	char netname[MAX_NETNAME];

	FUNC1(bs->client, netname, sizeof(netname));
	FUNC0(PRT_MESSAGE, "%s at %1.1f switched more than %d AI nodes\n", netname, FUNC2(), MAX_NODESWITCHES);
	for (i = 0; i < numnodeswitches; i++) {
		FUNC0(PRT_MESSAGE, nodeswitch[i]);
	}
	FUNC0(PRT_FATAL, "");
}