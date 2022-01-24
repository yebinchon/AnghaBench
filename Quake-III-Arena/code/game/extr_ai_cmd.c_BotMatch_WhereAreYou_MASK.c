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
typedef  int /*<<< orphan*/  netname ;
struct TYPE_10__ {int /*<<< orphan*/  cs; int /*<<< orphan*/  origin; int /*<<< orphan*/  areanum; } ;
typedef  TYPE_1__ bot_state_t ;
typedef  int /*<<< orphan*/  bot_match_t ;
typedef  int /*<<< orphan*/  bot_goal_t ;
struct TYPE_14__ {int /*<<< orphan*/  areanum; } ;
struct TYPE_13__ {int /*<<< orphan*/  areanum; } ;
struct TYPE_12__ {int /*<<< orphan*/  areanum; } ;
struct TYPE_11__ {int /*<<< orphan*/  areanum; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 float FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CHAT_TELL ; 
 int FUNC3 (char*) ; 
 scalar_t__ GT_1FCTF ; 
 scalar_t__ GT_CTF ; 
 scalar_t__ GT_HARVESTER ; 
 scalar_t__ GT_OBELISK ; 
 int MAX_MESSAGE_SIZE ; 
 int /*<<< orphan*/  NETNAME ; 
 int /*<<< orphan*/  TFL_DEFAULT ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_5__ blueobelisk ; 
 TYPE_4__ ctf_blueflag ; 
 TYPE_3__ ctf_redflag ; 
 scalar_t__ gametype ; 
 TYPE_2__ redobelisk ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 

void FUNC8(bot_state_t *bs, bot_match_t *match) {
	float dist, bestdist;
	int i, bestitem, redtt, bluett, client;
	bot_goal_t goal;
	char netname[MAX_MESSAGE_SIZE];
	char *nearbyitems[] = {
		"Shotgun",
		"Grenade Launcher",
		"Rocket Launcher",
		"Plasmagun",
		"Railgun",
		"Lightning Gun",
		"BFG10K",
		"Quad Damage",
		"Regeneration",
		"Battle Suit",
		"Speed",
		"Invisibility",
		"Flight",
		"Armor",
		"Heavy Armor",
		"Red Flag",
		"Blue Flag",
#ifdef MISSIONPACK
		"Nailgun",
		"Prox Launcher",
		"Chaingun",
		"Scout",
		"Guard",
		"Doubler",
		"Ammo Regen",
		"Neutral Flag",
		"Red Obelisk",
		"Blue Obelisk",
		"Neutral Obelisk",
#endif
		NULL
	};
	//
	if (!FUNC4())
		return;
	//if not addressed to this bot
	if (!FUNC1(bs, match))
		return;

	bestitem = -1;
	bestdist = 999999;
	for (i = 0; nearbyitems[i]; i++) {
		dist = FUNC2(bs, nearbyitems[i], &goal);
		if (dist < bestdist) {
			bestdist = dist;
			bestitem = i;
		}
	}
	if (bestitem != -1) {
		if (gametype == GT_CTF
#ifdef MISSIONPACK
			|| gametype == GT_1FCTF
#endif
			) {
			redtt = FUNC5(bs->areanum, bs->origin, ctf_redflag.areanum, TFL_DEFAULT);
			bluett = FUNC5(bs->areanum, bs->origin, ctf_blueflag.areanum, TFL_DEFAULT);
			if (redtt < (redtt + bluett) * 0.4) {
				FUNC0(bs, "teamlocation", nearbyitems[bestitem], "red", NULL);
			}
			else if (bluett < (redtt + bluett) * 0.4) {
				FUNC0(bs, "teamlocation", nearbyitems[bestitem], "blue", NULL);
			}
			else {
				FUNC0(bs, "location", nearbyitems[bestitem], NULL);
			}
		}
#ifdef MISSIONPACK
		else if (gametype == GT_OBELISK || gametype == GT_HARVESTER) {
			redtt = trap_AAS_AreaTravelTimeToGoalArea(bs->areanum, bs->origin, redobelisk.areanum, TFL_DEFAULT);
			bluett = trap_AAS_AreaTravelTimeToGoalArea(bs->areanum, bs->origin, blueobelisk.areanum, TFL_DEFAULT);
			if (redtt < (redtt + bluett) * 0.4) {
				BotAI_BotInitialChat(bs, "teamlocation", nearbyitems[bestitem], "red", NULL);
			}
			else if (bluett < (redtt + bluett) * 0.4) {
				BotAI_BotInitialChat(bs, "teamlocation", nearbyitems[bestitem], "blue", NULL);
			}
			else {
				BotAI_BotInitialChat(bs, "location", nearbyitems[bestitem], NULL);
			}
		}
#endif
		else {
			FUNC0(bs, "location", nearbyitems[bestitem], NULL);
		}
		FUNC7(match, NETNAME, netname, sizeof(netname));
		client = FUNC3(netname);
		FUNC6(bs->cs, client, CHAT_TELL);
	}
}