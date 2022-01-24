#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  bot_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ CS_PLAYERS ; 
 char* FUNC2 (char*,char*) ; 
 int MAX_CLIENTS ; 
 int MAX_INFO_STRING ; 
 scalar_t__ TEAM_SPECTATOR ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,char*,int) ; 

void FUNC7(bot_state_t *bs) {
	int teammates[MAX_CLIENTS];
	int numteammates, i;
	char buf[MAX_INFO_STRING];
	static int maxclients;

	if (!maxclients)
		maxclients = FUNC5("sv_maxclients");

	numteammates = 0;
	for (i = 0; i < maxclients && i < MAX_CLIENTS; i++) {
		FUNC6(CS_PLAYERS+i, buf, sizeof(buf));
		//if no config string or no name
		if (!FUNC4(buf) || !FUNC4(FUNC2(buf, "n"))) continue;
		//skip spectators
		if (FUNC3(FUNC2(buf, "t")) == TEAM_SPECTATOR) continue;
		//
		if (FUNC1(bs, i)) {
			teammates[numteammates] = i;
			numteammates++;
		}
	}
	//
	switch(numteammates) {
		case 1: break;
		case 2:
		{
			//nothing special
			break;
		}
		case 3:
		{
			//have one follow another and one free roaming
			FUNC0(bs, teammates, 2);
			break;
		}
		case 4:
		{
			FUNC0(bs, teammates, 2);		//a group of 2
			FUNC0(bs, &teammates[2], 2);	//a group of 2
			break;
		}
		case 5:
		{
			FUNC0(bs, teammates, 2);		//a group of 2
			FUNC0(bs, &teammates[2], 3);	//a group of 3
			break;
		}
		default:
		{
			if (numteammates <= 10) {
				for (i = 0; i < numteammates / 2; i++) {
					FUNC0(bs, &teammates[i*2], 2);	//groups of 2
				}
			}
			break;
		}
	}
}