#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  teammates ;
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  carriername ;
struct TYPE_8__ {int numteammates; int flagcarrier; int client; } ;
typedef  TYPE_1__ bot_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int) ; 
 int MAX_CLIENTS ; 
 int MAX_NETNAME ; 
 int /*<<< orphan*/  VOICECHAT_FOLLOWFLAGCARRIER ; 
 int /*<<< orphan*/  VOICECHAT_FOLLOWME ; 
 int /*<<< orphan*/  VOICECHAT_GETFLAG ; 
 int /*<<< orphan*/  VOICECHAT_RETURNFLAG ; 

void FUNC6(bot_state_t *bs) {
	int numteammates, defenders, attackers, i, other;
	int teammates[MAX_CLIENTS];
	char name[MAX_NETNAME], carriername[MAX_NETNAME];

	numteammates = FUNC3(bs, teammates, sizeof(teammates));
	FUNC4(bs, teammates, numteammates);
	//different orders based on the number of team mates
	switch(bs->numteammates) {
		case 1: break;
		case 2:
		{
			//tell the one not carrying the flag to attack the enemy base
			if (teammates[0] != bs->flagcarrier) other = teammates[0];
			else other = teammates[1];
			FUNC5(other, name, sizeof(name));
			FUNC0(bs, "cmd_getflag", name, NULL);
			FUNC1(bs, other);
			FUNC2(bs, other, VOICECHAT_GETFLAG);
			break;
		}
		case 3:
		{
			//tell the one closest to the base not carrying the flag to accompany the flag carrier
			if (teammates[0] != bs->flagcarrier) other = teammates[0];
			else other = teammates[1];
			FUNC5(other, name, sizeof(name));
			if ( bs->flagcarrier != -1 ) {
				FUNC5(bs->flagcarrier, carriername, sizeof(carriername));
				if (bs->flagcarrier == bs->client) {
					FUNC0(bs, "cmd_accompanyme", name, NULL);
					FUNC2(bs, other, VOICECHAT_FOLLOWME);
				}
				else {
					FUNC0(bs, "cmd_accompany", name, carriername, NULL);
					FUNC2(bs, other, VOICECHAT_FOLLOWFLAGCARRIER);
				}
			}
			else {
				//
				FUNC0(bs, "cmd_getflag", name, NULL);
				FUNC2(bs, other, VOICECHAT_GETFLAG);
			}
			FUNC1(bs, other);
			//tell the one furthest from the the base not carrying the flag to get the enemy flag
			if (teammates[2] != bs->flagcarrier) other = teammates[2];
			else other = teammates[1];
			FUNC5(other, name, sizeof(name));
			FUNC0(bs, "cmd_getflag", name, NULL);
			FUNC1(bs, other);
			FUNC2(bs, other, VOICECHAT_RETURNFLAG);
			break;
		}
		default:
		{
			defenders = (int) (float) numteammates * 0.4 + 0.5;
			if (defenders > 4) defenders = 4;
			attackers = (int) (float) numteammates * 0.5 + 0.5;
			if (attackers > 5) attackers = 5;
			if (bs->flagcarrier != -1) {
				FUNC5(bs->flagcarrier, carriername, sizeof(carriername));
				for (i = 0; i < defenders; i++) {
					//
					if (teammates[i] == bs->flagcarrier) {
						continue;
					}
					//
					FUNC5(teammates[i], name, sizeof(name));
					if (bs->flagcarrier == bs->client) {
						FUNC0(bs, "cmd_accompanyme", name, NULL);
						FUNC2(bs, teammates[i], VOICECHAT_FOLLOWME);
					}
					else {
						FUNC0(bs, "cmd_accompany", name, carriername, NULL);
						FUNC2(bs, teammates[i], VOICECHAT_FOLLOWFLAGCARRIER);
					}
					FUNC1(bs, teammates[i]);
				}
			}
			else {
				for (i = 0; i < defenders; i++) {
					//
					if (teammates[i] == bs->flagcarrier) {
						continue;
					}
					//
					FUNC5(teammates[i], name, sizeof(name));
					FUNC0(bs, "cmd_getflag", name, NULL);
					FUNC2(bs, teammates[i], VOICECHAT_GETFLAG);
					FUNC1(bs, teammates[i]);
				}
			}
			for (i = 0; i < attackers; i++) {
				//
				if (teammates[numteammates - i - 1] == bs->flagcarrier) {
					continue;
				}
				//
				FUNC5(teammates[numteammates - i - 1], name, sizeof(name));
				FUNC0(bs, "cmd_getflag", name, NULL);
				FUNC1(bs, teammates[numteammates - i - 1]);
				FUNC2(bs, teammates[numteammates - i - 1], VOICECHAT_RETURNFLAG);
			}
			//
			break;
		}
	}
}