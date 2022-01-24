#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_35__   TYPE_8__ ;
typedef  struct TYPE_34__   TYPE_3__ ;
typedef  struct TYPE_33__   TYPE_2__ ;
typedef  struct TYPE_32__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_32__ {scalar_t__ enemy; scalar_t__ lastenemyareanum; int tfl; int chase_time; int check_time; double nbg_time; double* ideal_viewangles; int flags; scalar_t__ areanum; int /*<<< orphan*/  weaponnum; int /*<<< orphan*/  origin; int /*<<< orphan*/  ms; scalar_t__ ltg_time; int /*<<< orphan*/  lastenemyorigin; int /*<<< orphan*/  viewangles; int /*<<< orphan*/  eye; int /*<<< orphan*/  entitynum; } ;
typedef  TYPE_1__ bot_state_t ;
struct TYPE_33__ {int flags; int /*<<< orphan*/  weapon; int /*<<< orphan*/  movedir; int /*<<< orphan*/  ideal_viewangles; scalar_t__ failure; } ;
typedef  TYPE_2__ bot_moveresult_t ;
struct TYPE_34__ {scalar_t__ entitynum; scalar_t__ areanum; double* origin; int /*<<< orphan*/  maxs; int /*<<< orphan*/  mins; } ;
typedef  TYPE_3__ bot_goal_t ;
struct TYPE_35__ {scalar_t__ integer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*) ; 
 int BFL_IDEALVIEWSET ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (TYPE_1__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__) ; 
 scalar_t__ FUNC11 (TYPE_1__*,int) ; 
 scalar_t__ FUNC12 (TYPE_1__*) ; 
 scalar_t__ FUNC13 (TYPE_1__*) ; 
 scalar_t__ FUNC14 (TYPE_1__*) ; 
 scalar_t__ FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 scalar_t__ FUNC17 (TYPE_1__*,int,TYPE_3__*,float) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC20 (TYPE_1__*) ; 
 int FUNC21 () ; 
 int MOVERESULT_MOVEMENTVIEW ; 
 int MOVERESULT_MOVEMENTVIEWSET ; 
 int MOVERESULT_MOVEMENTWEAPON ; 
 int MOVERESULT_SWIMVIEW ; 
 int TFL_DEFAULT ; 
 int TFL_GRAPPLEHOOK ; 
 int TFL_LAVA ; 
 int TFL_ROCKETJUMP ; 
 int TFL_SLIME ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,double*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_8__ bot_grapple ; 
 int qfalse ; 
 int qtrue ; 
 int /*<<< orphan*/  FUNC25 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_3__*,int) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ ,TYPE_3__*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC29 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,double*) ; 

int FUNC31(bot_state_t *bs)
{
	bot_goal_t goal;
	vec3_t target, dir;
	bot_moveresult_t moveresult;
	float range;

	if (FUNC15(bs)) {
		FUNC4(bs, "battle chase: observer");
		return qfalse;
	}
	//if in the intermission
	if (FUNC13(bs)) {
		FUNC3(bs, "battle chase: intermission");
		return qfalse;
	}
	//respawn if dead
	if (FUNC14(bs)) {
		FUNC5(bs, "battle chase: bot dead");
		return qfalse;
	}
	//if no enemy
	if (bs->enemy < 0) {
		FUNC6(bs, "battle chase: no enemy");
		return qfalse;
	}
	//if the enemy is visible
	if (FUNC10(bs->entitynum, bs->eye, bs->viewangles, 360, bs->enemy)) {
		FUNC0(bs, "battle chase");
		return qfalse;
	}
	//if there is another enemy
	if (FUNC11(bs, -1)) {
		FUNC0(bs, "battle chase: better enemy");
		return qfalse;
	}
	//there is no last enemy area
	if (!bs->lastenemyareanum) {
		FUNC6(bs, "battle chase: no enemy area");
		return qfalse;
	}
	//
	bs->tfl = TFL_DEFAULT;
	if (bot_grapple.integer) bs->tfl |= TFL_GRAPPLEHOOK;
	//if in lava or slime the bot should be able to get out
	if (FUNC12(bs)) bs->tfl |= TFL_LAVA|TFL_SLIME;
	//
	if (FUNC9(bs)) {
		bs->tfl |= TFL_ROCKETJUMP;
	}
	//map specific code
	FUNC16(bs);
	//create the chase goal
	goal.entitynum = bs->enemy;
	goal.areanum = bs->lastenemyareanum;
	FUNC22(bs->lastenemyorigin, goal.origin);
	FUNC23(goal.mins, -8, -8, -8);
	FUNC23(goal.maxs, 8, 8, 8);
	//if the last seen enemy spot is reached the enemy could not be found
	if (FUNC29(bs->origin, &goal)) bs->chase_time = 0;
	//if there's no chase time left
	if (!bs->chase_time || bs->chase_time < FUNC21() - 10) {
		FUNC6(bs, "battle chase: time out");
		return qfalse;
	}
	//check for nearby goals periodicly
	if (bs->check_time < FUNC21()) {
		bs->check_time = FUNC21() + 1;
		range = 150;
		//
		if (FUNC17(bs, bs->tfl, &goal, range)) {
			//the bot gets 5 seconds to pick up the nearby goal item
			bs->nbg_time = FUNC21() + 0.1 * range + 1;
			FUNC28(bs->ms);
			FUNC1(bs, "battle chase: nbg");
			return qfalse;
		}
	}
	//
	FUNC19(bs, bs->enemy);
	//initialize the movement state
	FUNC18(bs);
	//move towards the goal
	FUNC25(&moveresult, bs->ms, &goal, bs->tfl);
	//if the movement failed
	if (moveresult.failure) {
		//reset the avoid reach, otherwise bot is stuck in current area
		FUNC27(bs->ms);
		//BotAI_Print(PRT_MESSAGE, "movement failure %d\n", moveresult.traveltype);
		bs->ltg_time = 0;
	}
	//
	FUNC7(bs, &moveresult, qfalse);
	//
	if (moveresult.flags & (MOVERESULT_MOVEMENTVIEWSET|MOVERESULT_MOVEMENTVIEW|MOVERESULT_SWIMVIEW)) {
		FUNC22(moveresult.ideal_viewangles, bs->ideal_viewangles);
	}
	else if (!(bs->flags & BFL_IDEALVIEWSET)) {
		if (bs->chase_time > FUNC21() - 2) {
			FUNC8(bs);
		}
		else {
			if (FUNC26(bs->ms, &goal, bs->tfl, 300, target)) {
				FUNC24(target, bs->origin, dir);
				FUNC30(dir, bs->ideal_viewangles);
			}
			else {
				FUNC30(moveresult.movedir, bs->ideal_viewangles);
			}
		}
		bs->ideal_viewangles[2] *= 0.5;
	}
	//if the weapon is used for the bot movement
	if (moveresult.flags & MOVERESULT_MOVEMENTWEAPON) bs->weaponnum = moveresult.weapon;
	//if the bot is in the area the enemy was last seen in
	if (bs->areanum == bs->lastenemyareanum) bs->chase_time = 0;
	//if the bot wants to retreat (the bot could have been damage during the chase)
	if (FUNC20(bs)) {
		FUNC2(bs, "battle chase: wants to retreat");
		return qtrue;
	}
	return qtrue;
}