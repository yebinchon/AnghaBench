#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  teamleader; } ;
typedef  TYPE_2__ bot_state_t ;
struct TYPE_8__ {int svFlags; } ;
struct TYPE_10__ {TYPE_1__ r; scalar_t__ inuse; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int MAX_CLIENTS ; 
 int /*<<< orphan*/  SAY_TELL ; 
 int SVF_BOT ; 
 TYPE_3__* g_entities ; 
 int /*<<< orphan*/ * notleader ; 
 int qfalse ; 
 int qtrue ; 

int FUNC4(bot_state_t *bs) {
	int i;

	for (i = 0; i < MAX_CLIENTS; i++) {
		if ( g_entities[i].inuse ) {
			// if this player is not a bot
			if ( !(g_entities[i].r.svFlags & SVF_BOT) ) {
				// if this player is ok with being the leader
				if (!notleader[i]) {
					// if this player is on the same team
					if ( FUNC0(bs, i) ) {
						FUNC3(i, bs->teamleader, sizeof(bs->teamleader));
						// if not yet ordered to do anything
						if ( !FUNC1(bs) ) {
							// go on defense by default
							FUNC2(bs, i, SAY_TELL);
						}
						return qtrue;
					}
				}
			}
		}
	}
	return qfalse;
}