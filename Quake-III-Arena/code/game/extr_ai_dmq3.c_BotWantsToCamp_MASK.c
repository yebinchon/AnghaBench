#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ ltgtype; int camp_time; int* inventory; int ordered; int /*<<< orphan*/  origin; int /*<<< orphan*/  areanum; int /*<<< orphan*/  character; } ;
typedef  TYPE_1__ bot_state_t ;
struct TYPE_11__ {int /*<<< orphan*/  areanum; } ;
typedef  TYPE_2__ bot_goal_t ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  CHARACTERISTIC_CAMPER ; 
 int FUNC2 () ; 
 size_t INVENTORY_BFG10K ; 
 size_t INVENTORY_BFGAMMO ; 
 size_t INVENTORY_RAILGUN ; 
 size_t INVENTORY_ROCKETLAUNCHER ; 
 int INVENTORY_ROCKETS ; 
 size_t INVENTORY_SLUGS ; 
 scalar_t__ LTG_CAMP ; 
 scalar_t__ LTG_CAMPORDER ; 
 scalar_t__ LTG_DEFENDKEYAREA ; 
 scalar_t__ LTG_GETFLAG ; 
 scalar_t__ LTG_PATROL ; 
 scalar_t__ LTG_RUSHBASE ; 
 scalar_t__ LTG_TEAMACCOMPANY ; 
 scalar_t__ LTG_TEAMHELP ; 
 int /*<<< orphan*/  TFL_DEFAULT ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_2__*,int) ; 
 int qfalse ; 
 int qtrue ; 
 float FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int,TYPE_2__*) ; 
 float FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC8(bot_state_t *bs) {
	float camper;
	int cs, traveltime, besttraveltime;
	bot_goal_t goal, bestgoal;

	camper = FUNC7(bs->character, CHARACTERISTIC_CAMPER, 0, 1);
	if (camper < 0.1) return qfalse;
	//if the bot has a team goal
	if (bs->ltgtype == LTG_TEAMHELP ||
			bs->ltgtype == LTG_TEAMACCOMPANY ||
			bs->ltgtype == LTG_DEFENDKEYAREA ||
			bs->ltgtype == LTG_GETFLAG ||
			bs->ltgtype == LTG_RUSHBASE ||
			bs->ltgtype == LTG_CAMP ||
			bs->ltgtype == LTG_CAMPORDER ||
			bs->ltgtype == LTG_PATROL) {
		return qfalse;
	}
	//if camped recently
	if (bs->camp_time > FUNC2() - 60 + 300 * (1-camper)) return qfalse;
	//
	if (FUNC4() > camper) {
		bs->camp_time = FUNC2();
		return qfalse;
	}
	//if the bot isn't healthy anough
	if (FUNC0(bs) < 50) return qfalse;
	//the bot should have at least have the rocket launcher, the railgun or the bfg10k with some ammo
	if ((bs->inventory[INVENTORY_ROCKETLAUNCHER] <= 0 || bs->inventory[INVENTORY_ROCKETS < 10]) &&
		(bs->inventory[INVENTORY_RAILGUN] <= 0 || bs->inventory[INVENTORY_SLUGS] < 10) &&
		(bs->inventory[INVENTORY_BFG10K] <= 0 || bs->inventory[INVENTORY_BFGAMMO] < 10)) {
		return qfalse;
	}
	//find the closest camp spot
	besttraveltime = 99999;
	for (cs = FUNC6(0, &goal); cs; cs = FUNC6(cs, &goal)) {
		traveltime = FUNC5(bs->areanum, bs->origin, goal.areanum, TFL_DEFAULT);
		if (traveltime && traveltime < besttraveltime) {
			besttraveltime = traveltime;
			FUNC3(&bestgoal, &goal, sizeof(bot_goal_t));
		}
	}
	if (besttraveltime > 150) return qfalse;
	//ok found a camp spot, go camp there
	FUNC1(bs, &bestgoal);
	bs->ordered = qfalse;
	//
	return qtrue;
}