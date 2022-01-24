#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_48__   TYPE_7__ ;
typedef  struct TYPE_47__   TYPE_6__ ;
typedef  struct TYPE_46__   TYPE_5__ ;
typedef  struct TYPE_45__   TYPE_4__ ;
typedef  struct TYPE_44__   TYPE_3__ ;
typedef  struct TYPE_43__   TYPE_2__ ;
typedef  struct TYPE_42__   TYPE_1__ ;
typedef  struct TYPE_41__   TYPE_13__ ;

/* Type definitions */
typedef  double* vec3_t ;
struct TYPE_44__ {double fraction; scalar_t__ ent; } ;
typedef  TYPE_3__ bsp_trace_t ;
struct TYPE_42__ {int weapon; } ;
struct TYPE_45__ {int tfl; int enemy; double* ideal_viewangles; double thinktime; int flags; int weaponnum; int /*<<< orphan*/  gs; int /*<<< orphan*/  ms; int /*<<< orphan*/  origin; TYPE_2__* activatestack; int /*<<< orphan*/  eye; int /*<<< orphan*/  client; int /*<<< orphan*/  viewangles; TYPE_1__ cur_ps; int /*<<< orphan*/  entitynum; } ;
typedef  TYPE_4__ bot_state_t ;
struct TYPE_46__ {int flags; double* ideal_viewangles; int weapon; double* movedir; scalar_t__ failure; } ;
typedef  TYPE_5__ bot_moveresult_t ;
struct TYPE_47__ {scalar_t__ entitynum; } ;
typedef  TYPE_6__ bot_goal_t ;
struct TYPE_48__ {int /*<<< orphan*/  origin; } ;
typedef  TYPE_7__ aas_entityinfo_t ;
struct TYPE_43__ {double* target; int weapon; scalar_t__ time; scalar_t__ shoot; int /*<<< orphan*/  origin; TYPE_6__ goal; } ;
struct TYPE_41__ {scalar_t__ integer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,char*) ; 
 int BFL_IDEALVIEWSET ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,TYPE_5__*,int) ; 
 scalar_t__ FUNC7 (TYPE_4__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,double*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,TYPE_7__*) ; 
 scalar_t__ FUNC13 (TYPE_4__*,int) ; 
 scalar_t__ FUNC14 (TYPE_4__*) ; 
 scalar_t__ FUNC15 (TYPE_4__*) ; 
 scalar_t__ FUNC16 (TYPE_4__*) ; 
 scalar_t__ FUNC17 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_4__*,double*) ; 
 int FUNC21 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_4__*) ; 
 scalar_t__ FUNC23 (TYPE_4__*) ; 
 scalar_t__ FUNC24 () ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ ,int,double*) ; 
 int /*<<< orphan*/  MASK_SHOT ; 
 int MOVERESULT_MOVEMENTVIEW ; 
 int MOVERESULT_MOVEMENTVIEWSET ; 
 int MOVERESULT_MOVEMENTWEAPON ; 
 int MOVERESULT_SWIMVIEW ; 
 int MOVERESULT_WAITING ; 
 int /*<<< orphan*/  PRT_MESSAGE ; 
 int TFL_DEFAULT ; 
 int TFL_GRAPPLEHOOK ; 
 int TFL_LAVA ; 
 int TFL_SLIME ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (double*,double*) ; 
 int /*<<< orphan*/  FUNC28 (double*,int /*<<< orphan*/ ,double*) ; 
 TYPE_13__ bot_grapple ; 
 int /*<<< orphan*/  FUNC29 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int qfalse ; 
 int qtrue ; 
 double FUNC30 () ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (TYPE_5__*,int /*<<< orphan*/ ,TYPE_6__*,int) ; 
 scalar_t__ FUNC33 (int /*<<< orphan*/ ,TYPE_6__*,int,int,double*) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC36 (int /*<<< orphan*/ ,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC38 (double*,double*) ; 

int FUNC39(bot_state_t *bs) {
	bot_goal_t *goal;
	vec3_t target, dir, ideal_viewangles;
	bot_moveresult_t moveresult;
	int targetvisible;
	bsp_trace_t bsptrace;
	aas_entityinfo_t entinfo;

	if (FUNC17(bs)) {
		FUNC10(bs);
		FUNC3(bs, "active entity: observer");
		return qfalse;
	}
	//if in the intermission
	if (FUNC15(bs)) {
		FUNC10(bs);
		FUNC2(bs, "activate entity: intermission");
		return qfalse;
	}
	//respawn if dead
	if (FUNC16(bs)) {
		FUNC10(bs);
		FUNC4(bs, "activate entity: bot dead");
		return qfalse;
	}
	//
	bs->tfl = TFL_DEFAULT;
	if (bot_grapple.integer) bs->tfl |= TFL_GRAPPLEHOOK;
	// if in lava or slime the bot should be able to get out
	if (FUNC14(bs)) bs->tfl |= TFL_LAVA|TFL_SLIME;
	// map specific code
	FUNC18(bs);
	// no enemy
	bs->enemy = -1;
	// if the bot has no activate goal
	if (!bs->activatestack) {
		FUNC10(bs);
		FUNC5(bs, "activate entity: no goal");
		return qfalse;
	}
	//
	goal = &bs->activatestack->goal;
	// initialize target being visible to false
	targetvisible = qfalse;
	// if the bot has to shoot at a target to activate something
	if (bs->activatestack->shoot) {
		//
		FUNC9(&bsptrace, bs->eye, NULL, NULL, bs->activatestack->target, bs->entitynum, MASK_SHOT);
		// if the shootable entity is visible from the current position
		if (bsptrace.fraction >= 1.0 || bsptrace.ent == goal->entitynum) {
			targetvisible = qtrue;
			// if holding the right weapon
			if (bs->cur_ps.weapon == bs->activatestack->weapon) {
				FUNC28(bs->activatestack->target, bs->eye, dir);
				FUNC38(dir, ideal_viewangles);
				// if the bot is pretty close with it's aim
				if (FUNC25(bs->viewangles, 20, ideal_viewangles)) {
					FUNC37(bs->client);
				}
			}
		}
	}
	// if the shoot target is visible
	if (targetvisible) {
		// get the entity info of the entity the bot is shooting at
		FUNC12(goal->entitynum, &entinfo);
		// if the entity the bot shoots at moved
		if (!FUNC26(bs->activatestack->origin, entinfo.origin)) {
#ifdef DEBUG
			BotAI_Print(PRT_MESSAGE, "hit shootable button or trigger\n");
#endif //DEBUG
			bs->activatestack->time = 0;
		}
		// if the activate goal has been activated or the bot takes too long
		if (bs->activatestack->time < FUNC24()) {
			FUNC19(bs);
			// if there are more activate goals on the stack
			if (bs->activatestack) {
				bs->activatestack->time = FUNC24() + 10;
				return qfalse;
			}
			FUNC5(bs, "activate entity: time out");
			return qfalse;
		}
		FUNC29(&moveresult, 0, sizeof(bot_moveresult_t));
	}
	else {
		// if the bot has no goal
		if (!goal) {
			bs->activatestack->time = 0;
		}
		// if the bot does not have a shoot goal
		else if (!bs->activatestack->shoot) {
			//if the bot touches the current goal
			if (FUNC36(bs->origin, goal)) {
#ifdef DEBUG
				BotAI_Print(PRT_MESSAGE, "touched button or trigger\n");
#endif //DEBUG
				bs->activatestack->time = 0;
			}
		}
		// if the activate goal has been activated or the bot takes too long
		if (bs->activatestack->time < FUNC24()) {
			FUNC19(bs);
			// if there are more activate goals on the stack
			if (bs->activatestack) {
				bs->activatestack->time = FUNC24() + 10;
				return qfalse;
			}
			FUNC5(bs, "activate entity: activated");
			return qfalse;
		}
		//predict obstacles
		if (FUNC7(bs, goal))
			return qfalse;
		//initialize the movement state
		FUNC22(bs);
		//move towards the goal
		FUNC32(&moveresult, bs->ms, goal, bs->tfl);
		//if the movement failed
		if (moveresult.failure) {
			//reset the avoid reach, otherwise bot is stuck in current area
			FUNC34(bs->ms);
			//
			bs->activatestack->time = 0;
		}
		//check if the bot is blocked
		FUNC6(bs, &moveresult, qtrue);
	}
	//
	FUNC11(bs, &moveresult);
	// if the bot has to shoot to activate
	if (bs->activatestack->shoot) {
		// if the view angles aren't yet used for the movement
		if (!(moveresult.flags & MOVERESULT_MOVEMENTVIEW)) {
			FUNC28(bs->activatestack->target, bs->eye, dir);
			FUNC38(dir, moveresult.ideal_viewangles);
			moveresult.flags |= MOVERESULT_MOVEMENTVIEW;
		}
		// if there's no weapon yet used for the movement
		if (!(moveresult.flags & MOVERESULT_MOVEMENTWEAPON)) {
			moveresult.flags |= MOVERESULT_MOVEMENTWEAPON;
			//
			bs->activatestack->weapon = FUNC21(bs);
			if (bs->activatestack->weapon == -1) {
				//FIXME: find a decent weapon first
				bs->activatestack->weapon = 0;
			}
			moveresult.weapon = bs->activatestack->weapon;
		}
	}
	// if the ideal view angles are set for movement
	if (moveresult.flags & (MOVERESULT_MOVEMENTVIEWSET|MOVERESULT_MOVEMENTVIEW|MOVERESULT_SWIMVIEW)) {
		FUNC27(moveresult.ideal_viewangles, bs->ideal_viewangles);
	}
	// if waiting for something
	else if (moveresult.flags & MOVERESULT_WAITING) {
		if (FUNC30() < bs->thinktime * 0.8) {
			FUNC20(bs, target);
			FUNC28(target, bs->origin, dir);
			FUNC38(dir, bs->ideal_viewangles);
			bs->ideal_viewangles[2] *= 0.5;
		}
	}
	else if (!(bs->flags & BFL_IDEALVIEWSET)) {
		if (FUNC33(bs->ms, goal, bs->tfl, 300, target)) {
			FUNC28(target, bs->origin, dir);
			FUNC38(dir, bs->ideal_viewangles);
		}
		else {
			FUNC38(moveresult.movedir, bs->ideal_viewangles);
		}
		bs->ideal_viewangles[2] *= 0.5;
	}
	// if the weapon is used for the bot movement
	if (moveresult.flags & MOVERESULT_MOVEMENTWEAPON)
		bs->weaponnum = moveresult.weapon;
	// if there is an enemy
	if (FUNC13(bs, -1)) {
		if (FUNC23(bs)) {
			//keep the current long term goal and retreat
			FUNC1(bs, "activate entity: found enemy");
		}
		else {
			FUNC35(bs->ms);
			//empty the goal stack
			FUNC31(bs->gs);
			//go fight
			FUNC0(bs, "activate entity: found enemy");
		}
		FUNC10(bs);
	}
	return qtrue;
}