#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_36__   TYPE_7__ ;
typedef  struct TYPE_35__   TYPE_6__ ;
typedef  struct TYPE_34__   TYPE_5__ ;
typedef  struct TYPE_33__   TYPE_3__ ;
typedef  struct TYPE_32__   TYPE_2__ ;
typedef  struct TYPE_31__   TYPE_1__ ;

/* Type definitions */
typedef  int* vec3_t ;
struct TYPE_31__ {scalar_t__ enemy; int tfl; int* lastenemyorigin; int lastenemyareanum; scalar_t__ nbg_time; int* ideal_viewangles; int flags; int /*<<< orphan*/  weaponnum; int /*<<< orphan*/  origin; int /*<<< orphan*/  ms; int /*<<< orphan*/  character; int /*<<< orphan*/  gs; scalar_t__ enemyvisible_time; int /*<<< orphan*/  viewangles; int /*<<< orphan*/  eye; int /*<<< orphan*/  entitynum; } ;
typedef  TYPE_1__ bot_state_t ;
struct TYPE_32__ {int flags; int* ideal_viewangles; int* movedir; int /*<<< orphan*/  weapon; scalar_t__ failure; } ;
typedef  TYPE_2__ bot_moveresult_t ;
typedef  int /*<<< orphan*/  bot_goal_t ;
struct TYPE_33__ {int* origin; } ;
typedef  TYPE_3__ aas_entityinfo_t ;
struct TYPE_36__ {scalar_t__ entitynum; } ;
struct TYPE_35__ {scalar_t__ integer; } ;
struct TYPE_34__ {scalar_t__ entitynum; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 int BFL_IDEALVIEWSET ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,TYPE_3__*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__) ; 
 scalar_t__ FUNC13 (TYPE_1__*) ; 
 scalar_t__ FUNC14 (TYPE_1__*) ; 
 scalar_t__ FUNC15 (TYPE_1__*) ; 
 scalar_t__ FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 int FUNC18 (int*) ; 
 scalar_t__ FUNC19 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  CHARACTERISTIC_ATTACK_SKILL ; 
 scalar_t__ FUNC22 (TYPE_3__*) ; 
 scalar_t__ FUNC23 () ; 
 scalar_t__ MAX_CLIENTS ; 
 int MOVERESULT_MOVEMENTVIEW ; 
 int MOVERESULT_MOVEMENTVIEWSET ; 
 int MOVERESULT_MOVEMENTWEAPON ; 
 int MOVERESULT_SWIMVIEW ; 
 int TFL_DEFAULT ; 
 int TFL_GRAPPLEHOOK ; 
 int TFL_LAVA ; 
 int TFL_ROCKETJUMP ; 
 int TFL_SLIME ; 
 int /*<<< orphan*/  FUNC24 (int*,int*) ; 
 int /*<<< orphan*/  FUNC25 (int*,int /*<<< orphan*/ ,int*) ; 
 TYPE_7__ blueobelisk ; 
 TYPE_6__ bot_grapple ; 
 int qfalse ; 
 int qtrue ; 
 TYPE_5__ redobelisk ; 
 scalar_t__ FUNC26 (int) ; 
 scalar_t__ FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int*) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ) ; 
 float FUNC32 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC33 (int*,int*) ; 

int FUNC34(bot_state_t *bs) {
	int areanum;
	bot_goal_t goal;
	aas_entityinfo_t entinfo;
	bot_moveresult_t moveresult;
	float attack_skill;
	vec3_t target, dir;

	if (FUNC16(bs)) {
		FUNC3(bs, "battle nbg: observer");
		return qfalse;
	}
	//if in the intermission
	if (FUNC14(bs)) {
		FUNC2(bs, "battle nbg: intermission");
		return qfalse;
	}
	//respawn if dead
	if (FUNC15(bs)) {
		FUNC4(bs, "battle nbg: bot dead");
		return qfalse;
	}
	//if no enemy
	if (bs->enemy < 0) {
		FUNC5(bs, "battle nbg: no enemy");
		return qfalse;
	}
	//
	FUNC11(bs->enemy, &entinfo);
	if (FUNC22(&entinfo)) {
		FUNC5(bs, "battle nbg: enemy dead");
		return qfalse;
	}
	//
	bs->tfl = TFL_DEFAULT;
	if (bot_grapple.integer) bs->tfl |= TFL_GRAPPLEHOOK;
	//if in lava or slime the bot should be able to get out
	if (FUNC13(bs)) bs->tfl |= TFL_LAVA|TFL_SLIME;
	//
	if (FUNC8(bs)) {
		bs->tfl |= TFL_ROCKETJUMP;
	}
	//map specific code
	FUNC17(bs);
	//update the last time the enemy was visible
	if (FUNC12(bs->entitynum, bs->eye, bs->viewangles, 360, bs->enemy)) {
		bs->enemyvisible_time = FUNC23();
		FUNC24(entinfo.origin, target);
		// if not a player enemy
		if (bs->enemy >= MAX_CLIENTS) {
#ifdef MISSIONPACK
			// if attacking an obelisk
			if ( bs->enemy == redobelisk.entitynum ||
				bs->enemy == blueobelisk.entitynum ) {
				target[2] += 16;
			}
#endif
		}
		//update the reachability area and origin if possible
		areanum = FUNC18(target);
		if (areanum && FUNC26(areanum)) {
			FUNC24(target, bs->lastenemyorigin);
			bs->lastenemyareanum = areanum;
		}
	}
	//if the bot has no goal or touches the current goal
	if (!FUNC27(bs->gs, &goal)) {
		bs->nbg_time = 0;
	}
	else if (FUNC19(bs, &goal)) {
		bs->nbg_time = 0;
	}
	//
	if (bs->nbg_time < FUNC23()) {
		//pop the current goal from the stack
		FUNC30(bs->gs);
		//if the bot still has a goal
		if (FUNC27(bs->gs, &goal))
			FUNC1(bs, "battle nbg: time out");
		else
			FUNC0(bs, "battle nbg: time out");
		//
		return qfalse;
	}
	//initialize the movement state
	FUNC20(bs);
	//move towards the goal
	FUNC28(&moveresult, bs->ms, &goal, bs->tfl);
	//if the movement failed
	if (moveresult.failure) {
		//reset the avoid reach, otherwise bot is stuck in current area
		FUNC31(bs->ms);
		//BotAI_Print(PRT_MESSAGE, "movement failure %d\n", moveresult.traveltype);
		bs->nbg_time = 0;
	}
	//
	FUNC6(bs, &moveresult, qfalse);
	//update the attack inventory values
	FUNC21(bs, bs->enemy);
	//choose the best weapon to fight with
	FUNC10(bs);
	//if the view is fixed for the movement
	if (moveresult.flags & (MOVERESULT_MOVEMENTVIEW|MOVERESULT_SWIMVIEW)) {
		FUNC24(moveresult.ideal_viewangles, bs->ideal_viewangles);
	}
	else if (!(moveresult.flags & MOVERESULT_MOVEMENTVIEWSET)
				&& !(bs->flags & BFL_IDEALVIEWSET)) {
		attack_skill = FUNC32(bs->character, CHARACTERISTIC_ATTACK_SKILL, 0, 1);
		//if the bot is skilled anough and the enemy is visible
		if (attack_skill > 0.3) {
			//&& BotEntityVisible(bs->entitynum, bs->eye, bs->viewangles, 360, bs->enemy)
			FUNC7(bs);
		}
		else {
			if (FUNC29(bs->ms, &goal, bs->tfl, 300, target)) {
				FUNC25(target, bs->origin, dir);
				FUNC33(dir, bs->ideal_viewangles);
			}
			else {
				FUNC33(moveresult.movedir, bs->ideal_viewangles);
			}
			bs->ideal_viewangles[2] *= 0.5;
		}
	}
	//if the weapon is used for the bot movement
	if (moveresult.flags & MOVERESULT_MOVEMENTWEAPON) bs->weaponnum = moveresult.weapon;
	//attack the enemy if possible
	FUNC9(bs);
	//
	return qtrue;
}