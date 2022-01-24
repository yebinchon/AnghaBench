#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_64__   TYPE_2__ ;
typedef  struct TYPE_63__   TYPE_1__ ;

/* Type definitions */
struct TYPE_63__ {int /*<<< orphan*/  client; } ;
typedef  TYPE_1__ bot_state_t ;
struct TYPE_64__ {int type; } ;
typedef  TYPE_2__ bot_match_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_1__*,TYPE_2__*) ; 
#define  MSG_ACCOMPANY 161 
#define  MSG_ATTACKENEMYBASE 160 
#define  MSG_CAMP 159 
#define  MSG_CHECKPOINT 158 
#define  MSG_CREATENEWFORMATION 157 
#define  MSG_CTF 156 
#define  MSG_DEFENDKEYAREA 155 
#define  MSG_DISMISS 154 
#define  MSG_DOFORMATION 153 
#define  MSG_ENTERGAME 152 
#define  MSG_FORMATIONPOSITION 151 
#define  MSG_FORMATIONSPACE 150 
#define  MSG_GETFLAG 149 
#define  MSG_GETITEM 148 
#define  MSG_HARVEST 147 
#define  MSG_HELP 146 
#define  MSG_JOINSUBTEAM 145 
#define  MSG_KILL 144 
#define  MSG_LEADTHEWAY 143 
#define  MSG_LEAVESUBTEAM 142 
#define  MSG_NEWLEADER 141 
#define  MSG_PATROL 140 
#define  MSG_RETURNFLAG 139 
#define  MSG_RUSHBASE 138 
#define  MSG_STARTTEAMLEADERSHIP 137 
#define  MSG_STOPTEAMLEADERSHIP 136 
#define  MSG_SUICIDE 135 
#define  MSG_TASKPREFERENCE 134 
#define  MSG_WAIT 133 
#define  MSG_WHATAREYOUDOING 132 
#define  MSG_WHATISMYCOMMAND 131 
#define  MSG_WHEREAREYOU 130 
#define  MSG_WHICHTEAM 129 
#define  MSG_WHOISTEAMLAEDER 128 
 int MTCONTEXT_CTF ; 
 int MTCONTEXT_INITIALTEAMCHAT ; 
 int MTCONTEXT_MISC ; 
 int /*<<< orphan*/  PRT_MESSAGE ; 
 int qfalse ; 
 int qtrue ; 
 int /*<<< orphan*/  FUNC30 (char*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ,char*) ; 

int FUNC32(bot_state_t *bs, char *message) {
	bot_match_t match;

	match.type = 0;
	//if it is an unknown message
	if (!FUNC30(message, &match, MTCONTEXT_MISC
											|MTCONTEXT_INITIALTEAMCHAT
											|MTCONTEXT_CTF)) {
		return qfalse;
	}
	//react to the found message
	switch(match.type)
	{
		case MSG_HELP:					//someone calling for help
		case MSG_ACCOMPANY:				//someone calling for company
		{
			FUNC12(bs, &match);
			break;
		}
		case MSG_DEFENDKEYAREA:			//teamplay defend a key area
		{
			FUNC5(bs, &match);
			break;
		}
		case MSG_CAMP:					//camp somewhere
		{
			FUNC3(bs, &match);
			break;
		}
		case MSG_PATROL:				//patrol between several key areas
		{
			FUNC18(bs, &match);
			break;
		}
		//CTF & 1FCTF
		case MSG_GETFLAG:				//ctf get the enemy flag
		{
			FUNC9(bs, &match);
			break;
		}
#ifdef MISSIONPACK
		//CTF & 1FCTF & Obelisk & Harvester
		case MSG_ATTACKENEMYBASE:
		{
			BotMatch_AttackEnemyBase(bs, &match);
			break;
		}
		//Harvester
		case MSG_HARVEST:
		{
			BotMatch_Harvest(bs, &match);
			break;
		}
#endif
		//CTF & 1FCTF & Harvester
		case MSG_RUSHBASE:				//ctf rush to the base
		{
			FUNC20(bs, &match);
			break;
		}
		//CTF & 1FCTF
		case MSG_RETURNFLAG:
		{
			FUNC19(bs, &match);
			break;
		}
		//CTF & 1FCTF & Obelisk & Harvester
		case MSG_TASKPREFERENCE:
		{
			FUNC24(bs, &match);
			break;
		}
		//CTF & 1FCTF
		case MSG_CTF:
		{
			FUNC2(bs, &match);
			break;
		}
		case MSG_GETITEM:
		{
			FUNC10(bs, &match);
			break;
		}
		case MSG_JOINSUBTEAM:			//join a sub team
		{
			FUNC13(bs, &match);
			break;
		}
		case MSG_LEAVESUBTEAM:			//leave a sub team
		{
			FUNC16(bs, &match);
			break;
		}
		case MSG_WHICHTEAM:
		{
			FUNC28(bs, &match);
			break;
		}
		case MSG_CHECKPOINT:			//remember a check point
		{
			FUNC4(bs, &match);
			break;
		}
		case MSG_CREATENEWFORMATION:	//start the creation of a new formation
		{
			FUNC31(bs->client, "the part of my brain to create formations has been damaged");
			break;
		}
		case MSG_FORMATIONPOSITION:		//tell someone his/her position in the formation
		{
			FUNC31(bs->client, "the part of my brain to create formations has been damaged");
			break;
		}
		case MSG_FORMATIONSPACE:		//set the formation space
		{
			FUNC8(bs, &match);
			break;
		}
		case MSG_DOFORMATION:			//form a certain formation
		{
			break;
		}
		case MSG_DISMISS:				//dismiss someone
		{
			FUNC6(bs, &match);
			break;
		}
		case MSG_STARTTEAMLEADERSHIP:	//someone will become the team leader
		{
			FUNC21(bs, &match);
			break;
		}
		case MSG_STOPTEAMLEADERSHIP:	//someone will stop being the team leader
		{
			FUNC22(bs, &match);
			break;
		}
		case MSG_WHOISTEAMLAEDER:
		{
			FUNC29(bs, &match);
			break;
		}
		case MSG_WHATAREYOUDOING:		//ask a bot what he/she is doing
		{
			FUNC25(bs, &match);
			break;
		}
		case MSG_WHATISMYCOMMAND:
		{
			FUNC26(bs, &match);
			break;
		}
		case MSG_WHEREAREYOU:
		{
			FUNC27(bs, &match);
			break;
		}
		case MSG_LEADTHEWAY:
		{
			FUNC15(bs, &match);
			break;
		}
		case MSG_KILL:
		{
			FUNC14(bs, &match);
			break;
		}
		case MSG_ENTERGAME:				//someone entered the game
		{
			FUNC7(bs, &match);
			break;
		}
		case MSG_NEWLEADER:
		{
			FUNC17(bs, &match);
			break;
		}
		case MSG_WAIT:
		{
			break;
		}
		case MSG_SUICIDE:
		{
			FUNC23(bs, &match);
			break;
		}
		default:
		{
			FUNC0(PRT_MESSAGE, "unknown match type\n");
			break;
		}
	}
	return qtrue;
}