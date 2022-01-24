#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  netname ;
typedef  int /*<<< orphan*/  goalname ;
typedef  int /*<<< orphan*/  carrying ;
struct TYPE_10__ {scalar_t__ entitynum; int /*<<< orphan*/  number; } ;
struct TYPE_11__ {char** inventory; int ltgtype; scalar_t__ client; int /*<<< orphan*/  gs; TYPE_1__ teamgoal; int /*<<< orphan*/  teammate; int /*<<< orphan*/  teamleader; } ;
typedef  TYPE_2__ bot_state_t ;
struct TYPE_12__ {int /*<<< orphan*/  number; } ;
typedef  TYPE_3__ bot_goal_t ;
typedef  int /*<<< orphan*/  action ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 scalar_t__ CS_BOTINFO ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ GT_1FCTF ; 
 scalar_t__ GT_CTF ; 
 scalar_t__ GT_HARVESTER ; 
 size_t INVENTORY_BLUECUBE ; 
 size_t INVENTORY_REDCUBE ; 
#define  LTG_ATTACKENEMYBASE 140 
#define  LTG_CAMP 139 
#define  LTG_CAMPORDER 138 
#define  LTG_DEFENDKEYAREA 137 
#define  LTG_GETFLAG 136 
#define  LTG_GETITEM 135 
#define  LTG_HARVEST 134 
#define  LTG_KILL 133 
#define  LTG_PATROL 132 
#define  LTG_RETURNFLAG 131 
#define  LTG_RUSHBASE 130 
#define  LTG_TEAMACCOMPANY 129 
#define  LTG_TEAMHELP 128 
 int MAX_MESSAGE_SIZE ; 
 scalar_t__ FUNC7 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ TEAM_RED ; 
 scalar_t__ gametype ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,char*) ; 
 char* FUNC12 (char*,char*,char*,char*) ; 

void FUNC13(bot_state_t *bs) {
	char goalname[MAX_MESSAGE_SIZE];
	char netname[MAX_MESSAGE_SIZE];
	char action[MAX_MESSAGE_SIZE];
	char *leader, carrying[32], *cs;
	bot_goal_t goal;
	//
	FUNC4(bs->client, netname, sizeof(netname));
	if (FUNC7(netname, bs->teamleader) == 0) leader = "L";
	else leader = " ";

	FUNC8(carrying, "  ");
	if (gametype == GT_CTF) {
		if (FUNC1(bs)) {
			FUNC8(carrying, "F ");
		}
	}
#ifdef MISSIONPACK
	else if (gametype == GT_1FCTF) {
		if (Bot1FCTFCarryingFlag(bs)) {
			strcpy(carrying, "F ");
		}
	}
	else if (gametype == GT_HARVESTER) {
		if (BotHarvesterCarryingCubes(bs)) {
			if (BotTeam(bs) == TEAM_RED) Com_sprintf(carrying, sizeof(carrying), "%2d", bs->inventory[INVENTORY_REDCUBE]);
			else Com_sprintf(carrying, sizeof(carrying), "%2d", bs->inventory[INVENTORY_BLUECUBE]);
		}
	}
#endif

	switch(bs->ltgtype) {
		case LTG_TEAMHELP:
		{
			FUNC6(bs->teammate, goalname, sizeof(goalname));
			FUNC5(action, sizeof(action), "helping %s", goalname);
			break;
		}
		case LTG_TEAMACCOMPANY:
		{
			FUNC6(bs->teammate, goalname, sizeof(goalname));
			FUNC5(action, sizeof(action), "accompanying %s", goalname);
			break;
		}
		case LTG_DEFENDKEYAREA:
		{
			FUNC10(bs->teamgoal.number, goalname, sizeof(goalname));
			FUNC5(action, sizeof(action), "defending %s", goalname);
			break;
		}
		case LTG_GETITEM:
		{
			FUNC10(bs->teamgoal.number, goalname, sizeof(goalname));
			FUNC5(action, sizeof(action), "getting item %s", goalname);
			break;
		}
		case LTG_KILL:
		{
			FUNC4(bs->teamgoal.entitynum, goalname, sizeof(goalname));
			FUNC5(action, sizeof(action), "killing %s", goalname);
			break;
		}
		case LTG_CAMP:
		case LTG_CAMPORDER:
		{
			FUNC5(action, sizeof(action), "camping");
			break;
		}
		case LTG_PATROL:
		{
			FUNC5(action, sizeof(action), "patrolling");
			break;
		}
		case LTG_GETFLAG:
		{
			FUNC5(action, sizeof(action), "capturing flag");
			break;
		}
		case LTG_RUSHBASE:
		{
			FUNC5(action, sizeof(action), "rushing base");
			break;
		}
		case LTG_RETURNFLAG:
		{
			FUNC5(action, sizeof(action), "returning flag");
			break;
		}
		case LTG_ATTACKENEMYBASE:
		{
			FUNC5(action, sizeof(action), "attacking the enemy base");
			break;
		}
		case LTG_HARVEST:
		{
			FUNC5(action, sizeof(action), "harvesting");
			break;
		}
		default:
		{
			FUNC9(bs->gs, &goal);
			FUNC10(goal.number, goalname, sizeof(goalname));
			FUNC5(action, sizeof(action), "roaming %s", goalname);
			break;
		}
	}
  	cs = FUNC12("l\\%s\\c\\%s\\a\\%s",
				leader,
				carrying,
				action);
  	FUNC11 (CS_BOTINFO + bs->client, cs);
}