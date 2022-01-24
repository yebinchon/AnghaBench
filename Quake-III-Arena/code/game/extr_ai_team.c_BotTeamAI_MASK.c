#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  netname ;
struct TYPE_13__ {scalar_t__ askteamleader_time; scalar_t__ becometeamleader_time; scalar_t__ entergame_time; char* teamleader; int numteammates; scalar_t__ teamgiveorders_time; scalar_t__ lastflagcapture_time; void* forceorders; int /*<<< orphan*/  ctfstrategy; void* flagstatuschanged; int /*<<< orphan*/  client; int /*<<< orphan*/  cs; } ;
typedef  TYPE_1__ bot_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  CHAT_TEAM ; 
 int /*<<< orphan*/  CTFS_AGRESSIVE ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 scalar_t__ FUNC11 () ; 
#define  GT_1FCTF 132 
#define  GT_CTF 131 
#define  GT_HARVESTER 130 
#define  GT_OBELISK 129 
#define  GT_TEAM 128 
 int MAX_NETNAME ; 
 scalar_t__ FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  VOICECHAT_STARTLEADER ; 
 int gametype ; 
 void* qfalse ; 
 double FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC16(bot_state_t *bs) {
	int numteammates;
	char netname[MAX_NETNAME];

	//
	if ( gametype < GT_TEAM  )
		return;
	// make sure we've got a valid team leader
	if (!FUNC8(bs)) {
		//
		if (!FUNC10(bs)) {
			//
			if (!bs->askteamleader_time && !bs->becometeamleader_time) {
				if (bs->entergame_time + 10 > FUNC11()) {
					bs->askteamleader_time = FUNC11() + 5 + FUNC13() * 10;
				}
				else {
					bs->becometeamleader_time = FUNC11() + 5 + FUNC13() * 10;
				}
			}
			if (bs->askteamleader_time && bs->askteamleader_time < FUNC11()) {
				// if asked for a team leader and no response
				FUNC1(bs, "whoisteamleader", NULL);
				FUNC15(bs->cs, 0, CHAT_TEAM);
				bs->askteamleader_time = 0;
				bs->becometeamleader_time = FUNC11() + 8 + FUNC13() * 10;
			}
			if (bs->becometeamleader_time && bs->becometeamleader_time < FUNC11()) {
				FUNC1(bs, "iamteamleader", NULL);
				FUNC15(bs->cs, 0, CHAT_TEAM);
				FUNC6(bs, -1, VOICECHAT_STARTLEADER);
				FUNC9(bs->client, netname, sizeof(netname));
				FUNC14(bs->teamleader, netname, sizeof(bs->teamleader));
				bs->teamleader[sizeof(bs->teamleader)] = '\0';
				bs->becometeamleader_time = 0;
			}
			return;
		}
	}
	bs->askteamleader_time = 0;
	bs->becometeamleader_time = 0;

	//return if this bot is NOT the team leader
	FUNC9(bs->client, netname, sizeof(netname));
	if (FUNC12(netname, bs->teamleader) != 0) return;
	//
	numteammates = FUNC4(bs);
	//give orders
	switch(gametype) {
		case GT_TEAM:
		{
			if (bs->numteammates != numteammates || bs->forceorders) {
				bs->teamgiveorders_time = FUNC11();
				bs->numteammates = numteammates;
				bs->forceorders = qfalse;
			}
			//if it's time to give orders
			if (bs->teamgiveorders_time && bs->teamgiveorders_time < FUNC11() - 5) {
				FUNC7(bs);
				//give orders again after 120 seconds
				bs->teamgiveorders_time = FUNC11() + 120;
			}
			break;
		}
		case GT_CTF:
		{
			//if the number of team mates changed or the flag status changed
			//or someone wants to know what to do
			if (bs->numteammates != numteammates || bs->flagstatuschanged || bs->forceorders) {
				bs->teamgiveorders_time = FUNC11();
				bs->numteammates = numteammates;
				bs->flagstatuschanged = qfalse;
				bs->forceorders = qfalse;
			}
			//if there were no flag captures the last 3 minutes
			if (bs->lastflagcapture_time < FUNC11() - 240) {
				bs->lastflagcapture_time = FUNC11();
				//randomly change the CTF strategy
				if (FUNC13() < 0.4) {
					bs->ctfstrategy ^= CTFS_AGRESSIVE;
					bs->teamgiveorders_time = FUNC11();
				}
			}
			//if it's time to give orders
			if (bs->teamgiveorders_time && bs->teamgiveorders_time < FUNC11() - 3) {
				FUNC2(bs);
				//
				bs->teamgiveorders_time = 0;
			}
			break;
		}
#ifdef MISSIONPACK
		case GT_1FCTF:
		{
			if (bs->numteammates != numteammates || bs->flagstatuschanged || bs->forceorders) {
				bs->teamgiveorders_time = FloatTime();
				bs->numteammates = numteammates;
				bs->flagstatuschanged = qfalse;
				bs->forceorders = qfalse;
			}
			//if there were no flag captures the last 4 minutes
			if (bs->lastflagcapture_time < FloatTime() - 240) {
				bs->lastflagcapture_time = FloatTime();
				//randomly change the CTF strategy
				if (random() < 0.4) {
					bs->ctfstrategy ^= CTFS_AGRESSIVE;
					bs->teamgiveorders_time = FloatTime();
				}
			}
			//if it's time to give orders
			if (bs->teamgiveorders_time && bs->teamgiveorders_time < FloatTime() - 2) {
				Bot1FCTFOrders(bs);
				//
				bs->teamgiveorders_time = 0;
			}
			break;
		}
		case GT_OBELISK:
		{
			if (bs->numteammates != numteammates || bs->forceorders) {
				bs->teamgiveorders_time = FloatTime();
				bs->numteammates = numteammates;
				bs->forceorders = qfalse;
			}
			//if it's time to give orders
			if (bs->teamgiveorders_time && bs->teamgiveorders_time < FloatTime() - 5) {
				BotObeliskOrders(bs);
				//give orders again after 30 seconds
				bs->teamgiveorders_time = FloatTime() + 30;
			}
			break;
		}
		case GT_HARVESTER:
		{
			if (bs->numteammates != numteammates || bs->forceorders) {
				bs->teamgiveorders_time = FloatTime();
				bs->numteammates = numteammates;
				bs->forceorders = qfalse;
			}
			//if it's time to give orders
			if (bs->teamgiveorders_time && bs->teamgiveorders_time < FloatTime() - 5) {
				BotHarvesterOrders(bs);
				//give orders again after 30 seconds
				bs->teamgiveorders_time = FloatTime() + 30;
			}
			break;
		}
#endif
	}
}