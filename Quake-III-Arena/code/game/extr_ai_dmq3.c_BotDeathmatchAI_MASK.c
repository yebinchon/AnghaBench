#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  userinfo ;
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  gender ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_21__ {int /*<<< orphan*/ * persistant; } ;
struct TYPE_20__ {int /*<<< orphan*/  team; } ;
struct TYPE_22__ {scalar_t__ setupcount; int entergame_time; TYPE_2__ cur_ps; int /*<<< orphan*/  lasthitcount; int /*<<< orphan*/ * inventory; int /*<<< orphan*/  lastframe_health; int /*<<< orphan*/  client; int /*<<< orphan*/  gs; int /*<<< orphan*/  inuse; scalar_t__ (* ainode ) (TYPE_3__*) ;scalar_t__ entergamechat; scalar_t__ stand_time; int /*<<< orphan*/  flags; int /*<<< orphan*/  cs; TYPE_1__ settings; int /*<<< orphan*/  map_restart; int /*<<< orphan*/  character; } ;
typedef  TYPE_3__ bot_state_t ;
struct TYPE_23__ {scalar_t__ integer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  BFL_IDEALVIEWSET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,int,int) ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*) ; 
 int /*<<< orphan*/  CHARACTERISTIC_GENDER ; 
 int /*<<< orphan*/  CHAT_GENDERFEMALE ; 
 int /*<<< orphan*/  CHAT_GENDERLESS ; 
 int /*<<< orphan*/  CHAT_GENDERMALE ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC17 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int FUNC18 () ; 
 scalar_t__ GT_TOURNAMENT ; 
 size_t INVENTORY_HEALTH ; 
 int /*<<< orphan*/  FUNC19 (char*,char*,char*) ; 
 int MAX_INFO_STRING ; 
 int MAX_NODESWITCHES ; 
 size_t PERS_HITS ; 
 int /*<<< orphan*/  PRT_ERROR ; 
 TYPE_5__ g_gametype ; 
 scalar_t__ qtrue ; 
 scalar_t__ FUNC20 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,char*) ; 

void FUNC29(bot_state_t *bs, float thinktime) {
	char gender[144], name[144], buf[144];
	char userinfo[MAX_INFO_STRING];
	int i;

	//if the bot has just been setup
	if (bs->setupcount > 0) {
		bs->setupcount--;
		if (bs->setupcount > 0) return;
		//get the gender characteristic
		FUNC25(bs->character, CHARACTERISTIC_GENDER, gender, sizeof(gender));
		//set the bot gender
		FUNC27(bs->client, userinfo, sizeof(userinfo));
		FUNC19(userinfo, "sex", gender);
		FUNC28(bs->client, userinfo);
		//set the team
		if ( !bs->map_restart && g_gametype.integer != GT_TOURNAMENT ) {
			FUNC17(buf, sizeof(buf), "team %s", bs->settings.team);
			FUNC26(bs->client, buf);
		}
		//set the chat gender
		if (gender[0] == 'm') FUNC23(bs->cs, CHAT_GENDERMALE);
		else if (gender[0] == 'f')  FUNC23(bs->cs, CHAT_GENDERFEMALE);
		else  FUNC23(bs->cs, CHAT_GENDERLESS);
		//set the chat name
		FUNC16(bs->client, name, sizeof(name));
		FUNC24(bs->cs, name, bs->client);
		//
		bs->lastframe_health = bs->inventory[INVENTORY_HEALTH];
		bs->lasthitcount = bs->cur_ps.persistant[PERS_HITS];
		//
		bs->setupcount = 0;
		//
		FUNC13();
	}
	//no ideal view set
	bs->flags &= ~BFL_IDEALVIEWSET;
	//
	if (!FUNC9(bs)) {
		//set the teleport time
		FUNC12(bs);
		//update some inventory values
		FUNC15(bs);
		//check out the snapshot
		FUNC7(bs);
		//check for air
		FUNC5(bs);
	}
	//check the console messages
	FUNC6(bs);
	//if not in the intermission and not in observer mode
	if (!FUNC9(bs) && !FUNC10(bs)) {
		//do team AI
		FUNC14(bs);
	}
	//if the bot has no ai node
	if (!bs->ainode) {
		FUNC0(bs, "BotDeathmatchAI: no ai node");
	}
	//if the bot entered the game less than 8 seconds ago
	if (!bs->entergamechat && bs->entergame_time > FUNC18() - 8) {
		if (FUNC4(bs)) {
			bs->stand_time = FUNC18() + FUNC3(bs);
			FUNC1(bs, "BotDeathmatchAI: chat enter game");
		}
		bs->entergamechat = qtrue;
	}
	//reset the node switches from the previous frame
	FUNC11();
	//execute AI nodes
	for (i = 0; i < MAX_NODESWITCHES; i++) {
		if (bs->ainode(bs)) break;
	}
	//if the bot removed itself :)
	if (!bs->inuse) return;
	//if the bot executed too many AI nodes
	if (i >= MAX_NODESWITCHES) {
		FUNC22(bs->gs);
		FUNC21(bs->gs);
		FUNC8(bs);
		FUNC16(bs->client, name, sizeof(name));
		FUNC2(PRT_ERROR, "%s at %1.1f switched more than %d AI nodes\n", name, FUNC18(), MAX_NODESWITCHES);
	}
	//
	bs->lastframe_health = bs->inventory[INVENTORY_HEALTH];
	bs->lasthitcount = bs->cur_ps.persistant[PERS_HITS];
}