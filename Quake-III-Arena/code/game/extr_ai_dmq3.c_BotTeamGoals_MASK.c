#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ order_time; } ;
typedef  TYPE_1__ bot_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 scalar_t__ GT_1FCTF ; 
 scalar_t__ GT_CTF ; 
 scalar_t__ GT_HARVESTER ; 
 scalar_t__ GT_OBELISK ; 
 scalar_t__ gametype ; 

void FUNC8(bot_state_t *bs, int retreat) {

	if ( retreat ) {
		if (gametype == GT_CTF) {
			FUNC2(bs);
		}
#ifdef MISSIONPACK
		else if (gametype == GT_1FCTF) {
			Bot1FCTFRetreatGoals(bs);
		}
		else if (gametype == GT_OBELISK) {
			BotObeliskRetreatGoals(bs);
		}
		else if (gametype == GT_HARVESTER) {
			BotHarvesterRetreatGoals(bs);
		}
#endif
	}
	else {
		if (gametype == GT_CTF) {
			//decide what to do in CTF mode
			FUNC3(bs);
		}
#ifdef MISSIONPACK
		else if (gametype == GT_1FCTF) {
			Bot1FCTFSeekGoals(bs);
		}
		else if (gametype == GT_OBELISK) {
			BotObeliskSeekGoals(bs);
		}
		else if (gametype == GT_HARVESTER) {
			BotHarvesterSeekGoals(bs);
		}
#endif
	}
	// reset the order time which is used to see if
	// we decided to refuse an order
	bs->order_time = 0;
}