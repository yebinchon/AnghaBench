#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_24__ {scalar_t__ number; } ;
struct TYPE_22__ {scalar_t__ areanum; } ;
struct TYPE_23__ {scalar_t__ ltgtype; int teamgoal_time; scalar_t__ rushbaseaway_time; int redflagstatus; int blueflagstatus; int teammate; scalar_t__ owndecision_time; int arrive_time; double formation_dist; scalar_t__ ctfroam_time; int teamtaskpreference; scalar_t__ defendaway_time; TYPE_3__ teamgoal; void* ordered; int /*<<< orphan*/  client; int /*<<< orphan*/  decisionmaker; scalar_t__ teammessage_time; scalar_t__ lastgoal_ltgtype; scalar_t__ teammatevisible_time; TYPE_1__ altroutegoal; int /*<<< orphan*/  origin; } ;
typedef  TYPE_2__ bot_state_t ;
typedef  int /*<<< orphan*/  bot_goal_t ;
typedef  int /*<<< orphan*/  aas_entityinfo_t ;
struct TYPE_25__ {scalar_t__ number; scalar_t__ areanum; int /*<<< orphan*/  origin; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 scalar_t__ FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int const FUNC11 (TYPE_2__*) ; 
 int FUNC12 (TYPE_2__*) ; 
 scalar_t__ FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ CTF_GETFLAG_TIME ; 
 scalar_t__ CTF_RETURNFLAG_TIME ; 
 scalar_t__ CTF_ROAM_TIME ; 
 scalar_t__ CTF_RUSHBASE_TIME ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 () ; 
 scalar_t__ LTG_CAMPORDER ; 
 scalar_t__ LTG_DEFENDKEYAREA ; 
 scalar_t__ LTG_GETFLAG ; 
 scalar_t__ LTG_GETITEM ; 
 scalar_t__ LTG_MAKELOVE_ONTOP ; 
 scalar_t__ LTG_MAKELOVE_UNDER ; 
 scalar_t__ LTG_PATROL ; 
 scalar_t__ LTG_RETURNFLAG ; 
 scalar_t__ LTG_RUSHBASE ; 
 scalar_t__ LTG_TEAMACCOMPANY ; 
 scalar_t__ LTG_TEAMHELP ; 
 int /*<<< orphan*/  TEAMTASK_OFFENSE ; 
 int TEAMTP_ATTACKER ; 
 int TEAMTP_DEFENDER ; 
 scalar_t__ TEAM_ACCOMPANY_TIME ; 
#define  TEAM_BLUE 129 
 scalar_t__ TEAM_DEFENDKEYAREA_TIME ; 
#define  TEAM_RED 128 
 int /*<<< orphan*/  VOICECHAT_IHAVEFLAG ; 
 int /*<<< orphan*/  VOICECHAT_ONFOLLOW ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__ ctf_blueflag ; 
 TYPE_4__ ctf_redflag ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*,TYPE_4__*,int) ; 
 void* qfalse ; 
 int FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (char*,int /*<<< orphan*/ ) ; 

void FUNC23(bot_state_t *bs) {
	float rnd, l1, l2;
	int flagstatus, c;
	vec3_t dir;
	aas_entityinfo_t entinfo;

	//when carrying a flag in ctf the bot should rush to the base
	if (FUNC1(bs)) {
		//if not already rushing to the base
		if (bs->ltgtype != LTG_RUSHBASE) {
			FUNC7(bs);
			bs->ltgtype = LTG_RUSHBASE;
			bs->teamgoal_time = FUNC16() + CTF_RUSHBASE_TIME;
			bs->rushbaseaway_time = 0;
			bs->decisionmaker = bs->client;
			bs->ordered = qfalse;
			//
			switch(FUNC11(bs)) {
				case TEAM_RED: FUNC19(bs->origin, ctf_blueflag.origin, dir); break;
				case TEAM_BLUE: FUNC19(bs->origin, ctf_redflag.origin, dir); break;
				default: FUNC18(dir, 999, 999, 999); break;
			}
			// if the bot picked up the flag very close to the enemy base
			if ( FUNC17(dir) < 128 ) {
				// get an alternative route goal through the enemy base
				FUNC4(bs, FUNC5(bs));
			} else {
				// don't use any alt route goal, just get the hell out of the base
				bs->altroutegoal.areanum = 0;
			}
			FUNC10(bs, "teamtask", FUNC22("%d", TEAMTASK_OFFENSE));
			FUNC14(bs, -1, VOICECHAT_IHAVEFLAG);
		}
		else if (bs->rushbaseaway_time > FUNC16()) {
			if (FUNC11(bs) == TEAM_RED) flagstatus = bs->redflagstatus;
			else flagstatus = bs->blueflagstatus;
			//if the flag is back
			if (flagstatus == 0) {
				bs->rushbaseaway_time = 0;
			}
		}
		return;
	}
	// if the bot decided to follow someone
	if ( bs->ltgtype == LTG_TEAMACCOMPANY && !bs->ordered ) {
		// if the team mate being accompanied no longer carries the flag
		FUNC3(bs->teammate, &entinfo);
		if (!FUNC15(&entinfo)) {
			bs->ltgtype = 0;
		}
	}
	//
	if (FUNC11(bs) == TEAM_RED) flagstatus = bs->redflagstatus * 2 + bs->blueflagstatus;
	else flagstatus = bs->blueflagstatus * 2 + bs->redflagstatus;
	//if our team has the enemy flag and our flag is at the base
	if (flagstatus == 1) {
		//
		if (bs->owndecision_time < FUNC16()) {
			//if Not defending the base already
			if (!(bs->ltgtype == LTG_DEFENDKEYAREA &&
					(bs->teamgoal.number == ctf_redflag.number ||
					bs->teamgoal.number == ctf_blueflag.number))) {
				//if there is a visible team mate flag carrier
				c = FUNC12(bs);
				if (c >= 0 &&
						// and not already following the team mate flag carrier
						(bs->ltgtype != LTG_TEAMACCOMPANY || bs->teammate != c)) {
					//
					FUNC7(bs);
					//follow the flag carrier
					bs->decisionmaker = bs->client;
					bs->ordered = qfalse;
					//the team mate
					bs->teammate = c;
					//last time the team mate was visible
					bs->teammatevisible_time = FUNC16();
					//no message
					bs->teammessage_time = 0;
					//no arrive message
					bs->arrive_time = 1;
					//
					FUNC14(bs, bs->teammate, VOICECHAT_ONFOLLOW);
					//get the team goal time
					bs->teamgoal_time = FUNC16() + TEAM_ACCOMPANY_TIME;
					bs->ltgtype = LTG_TEAMACCOMPANY;
					bs->formation_dist = 3.5 * 32;		//3.5 meter
					FUNC9(bs);
					bs->owndecision_time = FUNC16() + 5;
				}
			}
		}
		return;
	}
	//if the enemy has our flag
	else if (flagstatus == 2) {
		//
		if (bs->owndecision_time < FUNC16()) {
			//if enemy flag carrier is visible
			c = FUNC2(bs);
			if (c >= 0) {
				//FIXME: fight enemy flag carrier
			}
			//if not already doing something important
			if (bs->ltgtype != LTG_GETFLAG &&
				bs->ltgtype != LTG_RETURNFLAG &&
				bs->ltgtype != LTG_TEAMHELP &&
				bs->ltgtype != LTG_TEAMACCOMPANY &&
				bs->ltgtype != LTG_CAMPORDER &&
				bs->ltgtype != LTG_PATROL &&
				bs->ltgtype != LTG_GETITEM) {

				FUNC7(bs);
				bs->decisionmaker = bs->client;
				bs->ordered = qfalse;
				//
				if (FUNC21() < 0.5) {
					//go for the enemy flag
					bs->ltgtype = LTG_GETFLAG;
				}
				else {
					bs->ltgtype = LTG_RETURNFLAG;
				}
				//no team message
				bs->teammessage_time = 0;
				//set the time the bot will stop getting the flag
				bs->teamgoal_time = FUNC16() + CTF_GETFLAG_TIME;
				//get an alternative route goal towards the enemy base
				FUNC4(bs, FUNC5(bs));
				//
				FUNC9(bs);
				bs->owndecision_time = FUNC16() + 5;
			}
		}
		return;
	}
	//if both flags Not at their bases
	else if (flagstatus == 3) {
		//
		if (bs->owndecision_time < FUNC16()) {
			// if not trying to return the flag and not following the team flag carrier
			if ( bs->ltgtype != LTG_RETURNFLAG && bs->ltgtype != LTG_TEAMACCOMPANY ) {
				//
				c = FUNC12(bs);
				// if there is a visible team mate flag carrier
				if (c >= 0) {
					FUNC7(bs);
					//follow the flag carrier
					bs->decisionmaker = bs->client;
					bs->ordered = qfalse;
					//the team mate
					bs->teammate = c;
					//last time the team mate was visible
					bs->teammatevisible_time = FUNC16();
					//no message
					bs->teammessage_time = 0;
					//no arrive message
					bs->arrive_time = 1;
					//
					FUNC14(bs, bs->teammate, VOICECHAT_ONFOLLOW);
					//get the team goal time
					bs->teamgoal_time = FUNC16() + TEAM_ACCOMPANY_TIME;
					bs->ltgtype = LTG_TEAMACCOMPANY;
					bs->formation_dist = 3.5 * 32;		//3.5 meter
					//
					FUNC9(bs);
					bs->owndecision_time = FUNC16() + 5;
				}
				else {
					FUNC7(bs);
					bs->decisionmaker = bs->client;
					bs->ordered = qfalse;
					//get the enemy flag
					bs->teammessage_time = FUNC16() + 2 * FUNC21();
					//get the flag
					bs->ltgtype = LTG_RETURNFLAG;
					//set the time the bot will stop getting the flag
					bs->teamgoal_time = FUNC16() + CTF_RETURNFLAG_TIME;
					//get an alternative route goal towards the enemy base
					FUNC4(bs, FUNC5(bs));
					//
					FUNC9(bs);
					bs->owndecision_time = FUNC16() + 5;
				}
			}
		}
		return;
	}
	// don't just do something wait for the bot team leader to give orders
	if (FUNC13(bs)) {
		return;
	}
	// if the bot is ordered to do something
	if ( bs->lastgoal_ltgtype ) {
		bs->teamgoal_time += 60;
	}
	// if the bot decided to do something on it's own and has a last ordered goal
	if ( !bs->ordered && bs->lastgoal_ltgtype ) {
		bs->ltgtype = 0;
	}
	//if already a CTF or team goal
	if (bs->ltgtype == LTG_TEAMHELP ||
			bs->ltgtype == LTG_TEAMACCOMPANY ||
			bs->ltgtype == LTG_DEFENDKEYAREA ||
			bs->ltgtype == LTG_GETFLAG ||
			bs->ltgtype == LTG_RUSHBASE ||
			bs->ltgtype == LTG_RETURNFLAG ||
			bs->ltgtype == LTG_CAMPORDER ||
			bs->ltgtype == LTG_PATROL ||
			bs->ltgtype == LTG_GETITEM ||
			bs->ltgtype == LTG_MAKELOVE_UNDER ||
			bs->ltgtype == LTG_MAKELOVE_ONTOP) {
		return;
	}
	//
	if (FUNC8(bs))
		return;
	//
	if (bs->owndecision_time > FUNC16())
		return;;
	//if the bot is roaming
	if (bs->ctfroam_time > FUNC16())
		return;
	//if the bot has anough aggression to decide what to do
	if (FUNC0(bs) < 50)
		return;
	//set the time to send a message to the team mates
	bs->teammessage_time = FUNC16() + 2 * FUNC21();
	//
	if (bs->teamtaskpreference & (TEAMTP_ATTACKER|TEAMTP_DEFENDER)) {
		if (bs->teamtaskpreference & TEAMTP_ATTACKER) {
			l1 = 0.7f;
		}
		else {
			l1 = 0.2f;
		}
		l2 = 0.9f;
	}
	else {
		l1 = 0.4f;
		l2 = 0.7f;
	}
	//get the flag or defend the base
	rnd = FUNC21();
	if (rnd < l1 && ctf_redflag.areanum && ctf_blueflag.areanum) {
		bs->decisionmaker = bs->client;
		bs->ordered = qfalse;
		bs->ltgtype = LTG_GETFLAG;
		//set the time the bot will stop getting the flag
		bs->teamgoal_time = FUNC16() + CTF_GETFLAG_TIME;
		//get an alternative route goal towards the enemy base
		FUNC4(bs, FUNC5(bs));
		FUNC9(bs);
	}
	else if (rnd < l2 && ctf_redflag.areanum && ctf_blueflag.areanum) {
		bs->decisionmaker = bs->client;
		bs->ordered = qfalse;
		//
		if (FUNC11(bs) == TEAM_RED) FUNC20(&bs->teamgoal, &ctf_redflag, sizeof(bot_goal_t));
		else FUNC20(&bs->teamgoal, &ctf_blueflag, sizeof(bot_goal_t));
		//set the ltg type
		bs->ltgtype = LTG_DEFENDKEYAREA;
		//set the time the bot stops defending the base
		bs->teamgoal_time = FUNC16() + TEAM_DEFENDKEYAREA_TIME;
		bs->defendaway_time = 0;
		FUNC9(bs);
	}
	else {
		bs->ltgtype = 0;
		//set the time the bot will stop roaming
		bs->ctfroam_time = FUNC16() + CTF_ROAM_TIME;
		FUNC9(bs);
	}
	bs->owndecision_time = FUNC16() + 5;
#ifdef DEBUG
	BotPrintTeamGoal(bs);
#endif //DEBUG
}