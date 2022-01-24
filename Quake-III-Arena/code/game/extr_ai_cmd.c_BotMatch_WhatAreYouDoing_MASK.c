#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  netname ;
typedef  int /*<<< orphan*/  goalname ;
struct TYPE_6__ {int /*<<< orphan*/  entitynum; int /*<<< orphan*/  number; } ;
struct TYPE_7__ {int ltgtype; int /*<<< orphan*/  cs; TYPE_1__ teamgoal; int /*<<< orphan*/  teammate; } ;
typedef  TYPE_2__ bot_state_t ;
typedef  int /*<<< orphan*/  bot_match_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CHAT_TELL ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
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
 int /*<<< orphan*/  NETNAME ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 

void FUNC8(bot_state_t *bs, bot_match_t *match) {
	char netname[MAX_MESSAGE_SIZE];
	char goalname[MAX_MESSAGE_SIZE];
	int client;

	//if not addressed to this bot
	if (!FUNC1(bs, match)) return;
	//
	switch(bs->ltgtype) {
		case LTG_TEAMHELP:
		{
			FUNC4(bs->teammate, netname, sizeof(netname));
			FUNC0(bs, "helping", netname, NULL);
			break;
		}
		case LTG_TEAMACCOMPANY:
		{
			FUNC4(bs->teammate, netname, sizeof(netname));
			FUNC0(bs, "accompanying", netname, NULL);
			break;
		}
		case LTG_DEFENDKEYAREA:
		{
			FUNC6(bs->teamgoal.number, goalname, sizeof(goalname));
			FUNC0(bs, "defending", goalname, NULL);
			break;
		}
		case LTG_GETITEM:
		{
			FUNC6(bs->teamgoal.number, goalname, sizeof(goalname));
			FUNC0(bs, "gettingitem", goalname, NULL);
			break;
		}
		case LTG_KILL:
		{
			FUNC3(bs->teamgoal.entitynum, netname, sizeof(netname));
			FUNC0(bs, "killing", netname, NULL);
			break;
		}
		case LTG_CAMP:
		case LTG_CAMPORDER:
		{
			FUNC0(bs, "camping", NULL);
			break;
		}
		case LTG_PATROL:
		{
			FUNC0(bs, "patrolling", NULL);
			break;
		}
		case LTG_GETFLAG:
		{
			FUNC0(bs, "capturingflag", NULL);
			break;
		}
		case LTG_RUSHBASE:
		{
			FUNC0(bs, "rushingbase", NULL);
			break;
		}
		case LTG_RETURNFLAG:
		{
			FUNC0(bs, "returningflag", NULL);
			break;
		}
#ifdef MISSIONPACK
		case LTG_ATTACKENEMYBASE:
		{
			BotAI_BotInitialChat(bs, "attackingenemybase", NULL);
			break;
		}
		case LTG_HARVEST:
		{
			BotAI_BotInitialChat(bs, "harvesting", NULL);
			break;
		}
#endif
		default:
		{
			FUNC0(bs, "roaming", NULL);
			break;
		}
	}
	//chat what the bot is doing
	FUNC7(match, NETNAME, netname, sizeof(netname));
	client = FUNC2(netname);
	FUNC5(bs->cs, client, CHAT_TELL);
}