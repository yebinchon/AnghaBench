#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int client; int /*<<< orphan*/  viewangles; int /*<<< orphan*/  eye; int /*<<< orphan*/  entitynum; } ;
typedef  TYPE_1__ bot_state_t ;
struct TYPE_8__ {int /*<<< orphan*/  valid; } ;
typedef  TYPE_2__ aas_entityinfo_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,TYPE_2__*) ; 
 float FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int MAX_CLIENTS ; 
 int maxclients ; 

int FUNC4(bot_state_t *bs) {
	int i;
	float vis;
	aas_entityinfo_t entinfo;

	for (i = 0; i < maxclients && i < MAX_CLIENTS; i++) {
		if (i == bs->client)
			continue;
		//
		FUNC0(i, &entinfo);
		//if this player is active
		if (!entinfo.valid)
			continue;
		//if this player is carrying a flag
		if (!FUNC3(&entinfo))
			continue;
		//if the flag carrier is on the same team
		if (FUNC2(bs, i))
			continue;
		//if the flag carrier is not visible
		vis = FUNC1(bs->entitynum, bs->eye, bs->viewangles, 360, i);
		if (vis <= 0)
			continue;
		//
		return i;
	}
	return -1;
}