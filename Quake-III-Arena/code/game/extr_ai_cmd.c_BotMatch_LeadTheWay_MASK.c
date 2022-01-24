#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  teammate ;
typedef  int /*<<< orphan*/  netname ;
struct TYPE_15__ {scalar_t__ entitynum; } ;
struct TYPE_14__ {int entitynum; int areanum; int /*<<< orphan*/  maxs; int /*<<< orphan*/  mins; int /*<<< orphan*/  origin; } ;
struct TYPE_16__ {int client; int lead_teammate; int leadmessage_time; scalar_t__ leadvisible_time; scalar_t__ lead_time; int /*<<< orphan*/  cs; TYPE_2__ teamgoal; TYPE_1__ lead_teamgoal; } ;
typedef  TYPE_3__ bot_state_t ;
struct TYPE_17__ {int subtype; } ;
typedef  TYPE_4__ bot_match_t ;
struct TYPE_18__ {int /*<<< orphan*/  origin; scalar_t__ valid; } ;
typedef  TYPE_5__ aas_entityinfo_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int,TYPE_5__*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  CHAT_TEAM ; 
 int FUNC5 (char*) ; 
 int FUNC6 (char*) ; 
 int FUNC7 () ; 
 int MAX_MESSAGE_SIZE ; 
 int /*<<< orphan*/  NETNAME ; 
 int ST_SOMEONE ; 
 int /*<<< orphan*/  TEAMMATE ; 
 scalar_t__ TEAM_LEAD_TIME ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int,int) ; 
 int qfalse ; 
 int qtrue ; 
 int FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*,int /*<<< orphan*/ ,char*,int) ; 

void FUNC14(bot_state_t *bs, bot_match_t *match) {
	aas_entityinfo_t entinfo;
	char netname[MAX_MESSAGE_SIZE], teammate[MAX_MESSAGE_SIZE];
	int client, areanum, other;

	if (!FUNC8()) return;
	//if not addressed to this bot
	if (!FUNC1(bs, match)) return;
	//if someone asks for someone else
	if (match->subtype & ST_SOMEONE) {
		//get the team mate name
		FUNC13(match, TEAMMATE, teammate, sizeof(teammate));
		client = FUNC6(teammate);
		//if this is the bot self
		if (client == bs->client) {
			other = qfalse;
		}
		else if (!FUNC4(bs, client)) {
			//FIXME: say "I don't help the enemy"
			return;
		}
		else {
			other = qtrue;
		}
	}
	else {
		//get the netname
		FUNC13(match, NETNAME, netname, sizeof(netname));
		client = FUNC5(netname);
		other = qfalse;
	}
	//if the bot doesn't know who to help (FindClientByName returned -1)
	if (client < 0) {
		FUNC0(bs, "whois", netname, NULL);
		FUNC12(bs->cs, bs->client, CHAT_TEAM);
		return;
	}
	//
	bs->lead_teamgoal.entitynum = -1;
	FUNC2(client, &entinfo);
	//if info is valid (in PVS)
	if (entinfo.valid) {
		areanum = FUNC3(entinfo.origin);
		if (areanum) { // && trap_AAS_AreaReachability(areanum)) {
			bs->lead_teamgoal.entitynum = client;
			bs->lead_teamgoal.areanum = areanum;
			FUNC9(entinfo.origin, bs->lead_teamgoal.origin);
			FUNC10(bs->lead_teamgoal.mins, -8, -8, -8);
			FUNC10(bs->lead_teamgoal.maxs, 8, 8, 8);
		}
	}

	if (bs->teamgoal.entitynum < 0) {
		if (other) FUNC0(bs, "whereis", teammate, NULL);
		else FUNC0(bs, "whereareyou", netname, NULL);
		FUNC12(bs->cs, bs->client, CHAT_TEAM);
		return;
	}
	bs->lead_teammate = client;
	bs->lead_time = FUNC7() + TEAM_LEAD_TIME;
	bs->leadvisible_time = 0;
	bs->leadmessage_time = -(FUNC7() + 2 * FUNC11());
}