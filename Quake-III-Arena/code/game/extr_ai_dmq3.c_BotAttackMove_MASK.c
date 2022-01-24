#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__* vec3_t ;
struct TYPE_10__ {scalar_t__ weapon; } ;
struct TYPE_12__ {int enemy; int attackchase_time; int attackcrouch_time; int attackjump_time; float attackstrafe_time; int flags; int /*<<< orphan*/  ms; scalar_t__ thinktime; TYPE_1__ cur_ps; int /*<<< orphan*/  origin; int /*<<< orphan*/  character; int /*<<< orphan*/  lastenemyorigin; int /*<<< orphan*/  lastenemyareanum; } ;
typedef  TYPE_3__ bot_state_t ;
typedef  int /*<<< orphan*/  bot_moveresult_t ;
struct TYPE_13__ {int entitynum; int /*<<< orphan*/  maxs; int /*<<< orphan*/  mins; int /*<<< orphan*/  origin; int /*<<< orphan*/  areanum; } ;
typedef  TYPE_4__ bot_goal_t ;
struct TYPE_14__ {int /*<<< orphan*/  origin; } ;
typedef  TYPE_5__ aas_entityinfo_t ;
struct TYPE_11__ {int member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int BFL_STRAFERIGHT ; 
 int /*<<< orphan*/  FUNC0 (int,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  CHARACTERISTIC_ATTACK_SKILL ; 
 int /*<<< orphan*/  CHARACTERISTIC_CROUCHER ; 
 int /*<<< orphan*/  CHARACTERISTIC_JUMPER ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int FUNC3 () ; 
 float IDEAL_ATTACKDIST ; 
 int MOVE_CROUCH ; 
 int MOVE_JUMP ; 
 int MOVE_WALK ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,scalar_t__*) ; 
 float FUNC7 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ WP_GAUNTLET ; 
 double FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 double FUNC12 () ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,scalar_t__*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_4__*,int) ; 
 float FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

bot_moveresult_t FUNC16(bot_state_t *bs, int tfl) {
	int movetype, i, attackentity;
	float attack_skill, jumper, croucher, dist, strafechange_time;
	float attack_dist, attack_range;
	vec3_t forward, backward, sideward, hordir, up = {0, 0, 1};
	aas_entityinfo_t entinfo;
	bot_moveresult_t moveresult;
	bot_goal_t goal;

	attackentity = bs->enemy;
	//
	if (bs->attackchase_time > FUNC3()) {
		//create the chase goal
		goal.entitynum = attackentity;
		goal.areanum = bs->lastenemyareanum;
		FUNC5(bs->lastenemyorigin, goal.origin);
		FUNC8(goal.mins, -8, -8, -8);
		FUNC8(goal.maxs, 8, 8, 8);
		//initialize the movement state
		FUNC1(bs);
		//move towards the goal
		FUNC14(&moveresult, bs->ms, &goal, tfl);
		return moveresult;
	}
	//
	FUNC11(&moveresult, 0, sizeof(bot_moveresult_t));
	//
	attack_skill = FUNC15(bs->character, CHARACTERISTIC_ATTACK_SKILL, 0, 1);
	jumper = FUNC15(bs->character, CHARACTERISTIC_JUMPER, 0, 1);
	croucher = FUNC15(bs->character, CHARACTERISTIC_CROUCHER, 0, 1);
	//if the bot is really stupid
	if (attack_skill < 0.2) return moveresult;
	//initialize the movement state
	FUNC1(bs);
	//get the enemy entity info
	FUNC0(attackentity, &entinfo);
	//direction towards the enemy
	FUNC9(entinfo.origin, bs->origin, forward);
	//the distance towards the enemy
	dist = FUNC7(forward);
	FUNC6(forward, backward);
	//walk, crouch or jump
	movetype = MOVE_WALK;
	//
	if (bs->attackcrouch_time < FUNC3() - 1) {
		if (FUNC12() < jumper) {
			movetype = MOVE_JUMP;
		}
		//wait at least one second before crouching again
		else if (bs->attackcrouch_time < FUNC3() - 1 && FUNC12() < croucher) {
			bs->attackcrouch_time = FUNC3() + croucher * 5;
		}
	}
	if (bs->attackcrouch_time > FUNC3()) movetype = MOVE_CROUCH;
	//if the bot should jump
	if (movetype == MOVE_JUMP) {
		//if jumped last frame
		if (bs->attackjump_time > FUNC3()) {
			movetype = MOVE_WALK;
		}
		else {
			bs->attackjump_time = FUNC3() + 1;
		}
	}
	if (bs->cur_ps.weapon == WP_GAUNTLET) {
		attack_dist = 0;
		attack_range = 0;
	}
	else {
		attack_dist = IDEAL_ATTACKDIST;
		attack_range = 40;
	}
	//if the bot is stupid
	if (attack_skill <= 0.4) {
		//just walk to or away from the enemy
		if (dist > attack_dist + attack_range) {
			if (FUNC13(bs->ms, forward, 400, movetype)) return moveresult;
		}
		if (dist < attack_dist - attack_range) {
			if (FUNC13(bs->ms, backward, 400, movetype)) return moveresult;
		}
		return moveresult;
	}
	//increase the strafe time
	bs->attackstrafe_time += bs->thinktime;
	//get the strafe change time
	strafechange_time = 0.4 + (1 - attack_skill) * 0.2;
	if (attack_skill > 0.7) strafechange_time += FUNC10() * 0.2;
	//if the strafe direction should be changed
	if (bs->attackstrafe_time > strafechange_time) {
		//some magic number :)
		if (FUNC12() > 0.935) {
			//flip the strafe direction
			bs->flags ^= BFL_STRAFERIGHT;
			bs->attackstrafe_time = 0;
		}
	}
	//
	for (i = 0; i < 2; i++) {
		hordir[0] = forward[0];
		hordir[1] = forward[1];
		hordir[2] = 0;
		FUNC7(hordir);
		//get the sideward vector
		FUNC2(hordir, up, sideward);
		//reverse the vector depending on the strafe direction
		if (bs->flags & BFL_STRAFERIGHT) FUNC6(sideward, sideward);
		//randomly go back a little
		if (FUNC12() > 0.9) {
			FUNC4(sideward, backward, sideward);
		}
		else {
			//walk forward or backward to get at the ideal attack distance
			if (dist > attack_dist + attack_range) {
				FUNC4(sideward, forward, sideward);
			}
			else if (dist < attack_dist - attack_range) {
				FUNC4(sideward, backward, sideward);
			}
		}
		//perform the movement
		if (FUNC13(bs->ms, sideward, 400, movetype))
			return moveresult;
		//movement failed, flip the strafe direction
		bs->flags ^= BFL_STRAFERIGHT;
		bs->attackstrafe_time = 0;
	}
	//bot couldn't do any usefull movement
//	bs->attackchase_time = AAS_Time() + 6;
	return moveresult;
}