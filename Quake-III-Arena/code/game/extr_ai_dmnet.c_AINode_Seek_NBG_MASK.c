#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_31__   TYPE_4__ ;
typedef  struct TYPE_30__   TYPE_2__ ;
typedef  struct TYPE_29__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_29__ {int tfl; int enemy; scalar_t__ nbg_time; double* ideal_viewangles; double thinktime; int flags; int /*<<< orphan*/  gs; int /*<<< orphan*/  ms; int /*<<< orphan*/  weaponnum; int /*<<< orphan*/  origin; scalar_t__ check_time; } ;
typedef  TYPE_1__ bot_state_t ;
struct TYPE_30__ {int flags; int /*<<< orphan*/  weapon; int /*<<< orphan*/  movedir; int /*<<< orphan*/  ideal_viewangles; scalar_t__ failure; } ;
typedef  TYPE_2__ bot_moveresult_t ;
typedef  int /*<<< orphan*/  bot_goal_t ;
struct TYPE_31__ {scalar_t__ integer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 int BFL_IDEALVIEWSET ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_2__*,int) ; 
 scalar_t__ FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,TYPE_2__*) ; 
 scalar_t__ FUNC11 (TYPE_1__*,int) ; 
 scalar_t__ FUNC12 (TYPE_1__*) ; 
 scalar_t__ FUNC13 (TYPE_1__*) ; 
 scalar_t__ FUNC14 (TYPE_1__*) ; 
 scalar_t__ FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 scalar_t__ FUNC17 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*) ; 
 scalar_t__ FUNC20 (TYPE_1__*) ; 
 scalar_t__ FUNC21 () ; 
 int MOVERESULT_MOVEMENTVIEW ; 
 int MOVERESULT_MOVEMENTVIEWSET ; 
 int MOVERESULT_MOVEMENTWEAPON ; 
 int MOVERESULT_SWIMVIEW ; 
 int MOVERESULT_WAITING ; 
 int TFL_DEFAULT ; 
 int TFL_GRAPPLEHOOK ; 
 int TFL_LAVA ; 
 int TFL_ROCKETJUMP ; 
 int TFL_SLIME ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,double*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__ bot_grapple ; 
 int qfalse ; 
 int qtrue ; 
 double FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ,double*) ; 

int FUNC34(bot_state_t *bs) {
	bot_goal_t goal;
	vec3_t target, dir;
	bot_moveresult_t moveresult;

	if (FUNC15(bs)) {
		FUNC3(bs, "seek nbg: observer");
		return qfalse;
	}
	//if in the intermission
	if (FUNC13(bs)) {
		FUNC2(bs, "seek nbg: intermision");
		return qfalse;
	}
	//respawn if dead
	if (FUNC14(bs)) {
		FUNC4(bs, "seek nbg: bot dead");
		return qfalse;
	}
	//
	bs->tfl = TFL_DEFAULT;
	if (bot_grapple.integer) bs->tfl |= TFL_GRAPPLEHOOK;
	//if in lava or slime the bot should be able to get out
	if (FUNC12(bs)) bs->tfl |= TFL_LAVA|TFL_SLIME;
	//
	if (FUNC8(bs)) {
		bs->tfl |= TFL_ROCKETJUMP;
	}
	//map specific code
	FUNC16(bs);
	//no enemy
	bs->enemy = -1;
	//if the bot has no goal
	if (!FUNC27(bs->gs, &goal)) bs->nbg_time = 0;
	//if the bot touches the current goal
	else if (FUNC17(bs, &goal)) {
		FUNC9(bs);
		bs->nbg_time = 0;
	}
	//
	if (bs->nbg_time < FUNC21()) {
		//pop the current goal from the stack
		FUNC30(bs->gs);
		//check for new nearby items right away
		//NOTE: we canNOT reset the check_time to zero because it would create an endless loop of node switches
		bs->check_time = FUNC21() + 0.05;
		//go back to seek ltg
		FUNC5(bs, "seek nbg: time out");
		return qfalse;
	}
	//predict obstacles
	if (FUNC7(bs, &goal))
		return qfalse;
	//initialize the movement state
	FUNC19(bs);
	//move towards the goal
	FUNC28(&moveresult, bs->ms, &goal, bs->tfl);
	//if the movement failed
	if (moveresult.failure) {
		//reset the avoid reach, otherwise bot is stuck in current area
		FUNC31(bs->ms);
		bs->nbg_time = 0;
	}
	//check if the bot is blocked
	FUNC6(bs, &moveresult, qtrue);
	//
	FUNC10(bs, &moveresult);
	//if the viewangles are used for the movement
	if (moveresult.flags & (MOVERESULT_MOVEMENTVIEWSET|MOVERESULT_MOVEMENTVIEW|MOVERESULT_SWIMVIEW)) {
		FUNC22(moveresult.ideal_viewangles, bs->ideal_viewangles);
	}
	//if waiting for something
	else if (moveresult.flags & MOVERESULT_WAITING) {
		if (FUNC24() < bs->thinktime * 0.8) {
			FUNC18(bs, target);
			FUNC23(target, bs->origin, dir);
			FUNC33(dir, bs->ideal_viewangles);
			bs->ideal_viewangles[2] *= 0.5;
		}
	}
	else if (!(bs->flags & BFL_IDEALVIEWSET)) {
		if (!FUNC26(bs->gs, &goal)) FUNC27(bs->gs, &goal);
		if (FUNC29(bs->ms, &goal, bs->tfl, 300, target)) {
			FUNC23(target, bs->origin, dir);
			FUNC33(dir, bs->ideal_viewangles);
		}
		//FIXME: look at cluster portals?
		else FUNC33(moveresult.movedir, bs->ideal_viewangles);
		bs->ideal_viewangles[2] *= 0.5;
	}
	//if the weapon is used for the bot movement
	if (moveresult.flags & MOVERESULT_MOVEMENTWEAPON) bs->weaponnum = moveresult.weapon;
	//if there is an enemy
	if (FUNC11(bs, -1)) {
		if (FUNC20(bs)) {
			//keep the current long term goal and retreat
			FUNC1(bs, "seek nbg: found enemy");
		}
		else {
			FUNC32(bs->ms);
			//empty the goal stack
			FUNC25(bs->gs);
			//go fight
			FUNC0(bs, "seek nbg: found enemy");
		}
	}
	return qtrue;
}