#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_45__   TYPE_7__ ;
typedef  struct TYPE_44__   TYPE_6__ ;
typedef  struct TYPE_43__   TYPE_5__ ;
typedef  struct TYPE_42__   TYPE_3__ ;
typedef  struct TYPE_41__   TYPE_2__ ;
typedef  struct TYPE_40__   TYPE_1__ ;

/* Type definitions */
typedef  int* vec3_t ;
struct TYPE_40__ {scalar_t__ enemy; int tfl; float enemyvisible_time; int* lastenemyorigin; int lastenemyareanum; float check_time; float nbg_time; int* ideal_viewangles; int flags; int /*<<< orphan*/  weaponnum; int /*<<< orphan*/  origin; int /*<<< orphan*/  ms; int /*<<< orphan*/  character; scalar_t__ ltg_time; int /*<<< orphan*/  viewangles; int /*<<< orphan*/  eye; int /*<<< orphan*/  entitynum; int /*<<< orphan*/  gs; } ;
typedef  TYPE_1__ bot_state_t ;
struct TYPE_41__ {int flags; int* ideal_viewangles; int* movedir; int /*<<< orphan*/  weapon; scalar_t__ failure; } ;
typedef  TYPE_2__ bot_moveresult_t ;
typedef  int /*<<< orphan*/  bot_goal_t ;
struct TYPE_42__ {int* origin; } ;
typedef  TYPE_3__ aas_entityinfo_t ;
struct TYPE_45__ {scalar_t__ entitynum; } ;
struct TYPE_44__ {scalar_t__ integer; } ;
struct TYPE_43__ {scalar_t__ entitynum; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*) ; 
 int BFL_IDEALVIEWSET ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 scalar_t__ FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,TYPE_3__*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC18 (TYPE_1__*,int) ; 
 scalar_t__ FUNC19 (TYPE_1__*) ; 
 scalar_t__ FUNC20 (TYPE_1__*) ; 
 scalar_t__ FUNC21 (TYPE_1__*) ; 
 scalar_t__ FUNC22 (TYPE_1__*) ; 
 scalar_t__ FUNC23 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_1__*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_1__*) ; 
 scalar_t__ FUNC26 (TYPE_1__*,int,int /*<<< orphan*/ *,float) ; 
 int FUNC27 (int*) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_1__*,int) ; 
 scalar_t__ FUNC31 (TYPE_1__*) ; 
 int /*<<< orphan*/  CHARACTERISTIC_ATTACK_SKILL ; 
 scalar_t__ FUNC32 (TYPE_3__*) ; 
 float FUNC33 () ; 
 scalar_t__ GT_1FCTF ; 
 scalar_t__ GT_CTF ; 
 scalar_t__ GT_HARVESTER ; 
 scalar_t__ MAX_CLIENTS ; 
 int MOVERESULT_MOVEMENTVIEW ; 
 int MOVERESULT_MOVEMENTVIEWSET ; 
 int MOVERESULT_MOVEMENTWEAPON ; 
 int MOVERESULT_SWIMVIEW ; 
 int /*<<< orphan*/  PRT_MESSAGE ; 
 int TFL_DEFAULT ; 
 int TFL_GRAPPLEHOOK ; 
 int TFL_LAVA ; 
 int TFL_SLIME ; 
 int /*<<< orphan*/  FUNC34 (int*,int*) ; 
 int /*<<< orphan*/  FUNC35 (int*,int /*<<< orphan*/ ,int*) ; 
 TYPE_7__ blueobelisk ; 
 TYPE_6__ bot_grapple ; 
 scalar_t__ gametype ; 
 int qfalse ; 
 int qtrue ; 
 TYPE_5__ redobelisk ; 
 scalar_t__ FUNC36 (int) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC38 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC39 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int*) ; 
 int /*<<< orphan*/  FUNC40 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ ) ; 
 float FUNC42 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC43 (int*,int*) ; 

int FUNC44(bot_state_t *bs) {
	bot_goal_t goal;
	aas_entityinfo_t entinfo;
	bot_moveresult_t moveresult;
	vec3_t target, dir;
	float attack_skill, range;
	int areanum;

	if (FUNC23(bs)) {
		FUNC5(bs, "battle retreat: observer");
		return qfalse;
	}
	//if in the intermission
	if (FUNC21(bs)) {
		FUNC4(bs, "battle retreat: intermission");
		return qfalse;
	}
	//respawn if dead
	if (FUNC22(bs)) {
		FUNC6(bs, "battle retreat: bot dead");
		return qfalse;
	}
	//if no enemy
	if (bs->enemy < 0) {
		FUNC7(bs, "battle retreat: no enemy");
		return qfalse;
	}
	//
	FUNC16(bs->enemy, &entinfo);
	if (FUNC32(&entinfo)) {
		FUNC7(bs, "battle retreat: enemy dead");
		return qfalse;
	}
	//if there is another better enemy
	if (FUNC18(bs, bs->enemy)) {
#ifdef DEBUG
		BotAI_Print(PRT_MESSAGE, "found new better enemy\n");
#endif
	}
	//
	bs->tfl = TFL_DEFAULT;
	if (bot_grapple.integer) bs->tfl |= TFL_GRAPPLEHOOK;
	//if in lava or slime the bot should be able to get out
	if (FUNC20(bs)) bs->tfl |= TFL_LAVA|TFL_SLIME;
	//map specific code
	FUNC25(bs);
	//update the attack inventory values
	FUNC30(bs, bs->enemy);
	//if the bot doesn't want to retreat anymore... probably picked up some nice items
	if (FUNC31(bs)) {
		//empty the goal stack, when chasing, only the enemy is the goal
		FUNC37(bs->gs);
		//go chase the enemy
		FUNC0(bs, "battle retreat: wants to chase");
		return qfalse;
	}
	//update the last time the enemy was visible
	if (FUNC17(bs->entitynum, bs->eye, bs->viewangles, 360, bs->enemy)) {
		bs->enemyvisible_time = FUNC33();
		FUNC34(entinfo.origin, target);
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
		areanum = FUNC27(target);
		if (areanum && FUNC36(areanum)) {
			FUNC34(target, bs->lastenemyorigin);
			bs->lastenemyareanum = areanum;
		}
	}
	//if the enemy is NOT visible for 4 seconds
	if (bs->enemyvisible_time < FUNC33() - 4) {
		FUNC7(bs, "battle retreat: lost enemy");
		return qfalse;
	}
	//else if the enemy is NOT visible
	else if (bs->enemyvisible_time < FUNC33()) {
		//if there is another enemy
		if (FUNC18(bs, -1)) {
			FUNC1(bs, "battle retreat: another enemy");
			return qfalse;
		}
	}
	//
	FUNC29(bs, qtrue);
	//use holdable items
	FUNC12(bs);
	//get the current long term goal while retreating
	if (!FUNC24(bs, bs->tfl, qtrue, &goal)) {
		FUNC3(bs, "battle retreat: no way out");
		return qfalse;
	}
	//check for nearby goals periodicly
	if (bs->check_time < FUNC33()) {
		bs->check_time = FUNC33() + 1;
		range = 150;
#ifdef CTF
		if (gametype == GT_CTF) {
			//if carrying a flag the bot shouldn't be distracted too much
			if (BotCTFCarryingFlag(bs))
				range = 50;
		}
#endif //CTF
#ifdef MISSIONPACK
		else if (gametype == GT_1FCTF) {
			if (Bot1FCTFCarryingFlag(bs))
				range = 50;
		}
		else if (gametype == GT_HARVESTER) {
			if (BotHarvesterCarryingCubes(bs))
				range = 80;
		}
#endif
		//
		if (FUNC26(bs, bs->tfl, &goal, range)) {
			FUNC41(bs->ms);
			//time the bot gets to pick up the nearby goal item
			bs->nbg_time = FUNC33() + range / 100 + 1;
			FUNC2(bs, "battle retreat: nbg");
			return qfalse;
		}
	}
	//initialize the movement state
	FUNC28(bs);
	//move towards the goal
	FUNC38(&moveresult, bs->ms, &goal, bs->tfl);
	//if the movement failed
	if (moveresult.failure) {
		//reset the avoid reach, otherwise bot is stuck in current area
		FUNC40(bs->ms);
		//BotAI_Print(PRT_MESSAGE, "movement failure %d\n", moveresult.traveltype);
		bs->ltg_time = 0;
	}
	//
	FUNC9(bs, &moveresult, qfalse);
	//choose the best weapon to fight with
	FUNC15(bs);
	//if the view is fixed for the movement
	if (moveresult.flags & (MOVERESULT_MOVEMENTVIEW|MOVERESULT_SWIMVIEW)) {
		FUNC34(moveresult.ideal_viewangles, bs->ideal_viewangles);
	}
	else if (!(moveresult.flags & MOVERESULT_MOVEMENTVIEWSET)
				&& !(bs->flags & BFL_IDEALVIEWSET) ) {
		attack_skill = FUNC42(bs->character, CHARACTERISTIC_ATTACK_SKILL, 0, 1);
		//if the bot is skilled anough
		if (attack_skill > 0.3) {
			FUNC11(bs);
		}
		else {
			if (FUNC39(bs->ms, &goal, bs->tfl, 300, target)) {
				FUNC35(target, bs->origin, dir);
				FUNC43(dir, bs->ideal_viewangles);
			}
			else {
				FUNC43(moveresult.movedir, bs->ideal_viewangles);
			}
			bs->ideal_viewangles[2] *= 0.5;
		}
	}
	//if the weapon is used for the bot movement
	if (moveresult.flags & MOVERESULT_MOVEMENTWEAPON) bs->weaponnum = moveresult.weapon;
	//attack the enemy if possible
	FUNC14(bs);
	//
	return qtrue;
}