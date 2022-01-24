#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int* persistant; } ;
typedef  TYPE_1__ playerState_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,TYPE_1__*) ; 
 scalar_t__ CS_PLAYERS ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 char* FUNC2 (char*,char*) ; 
 int MAX_CLIENTS ; 
 int MAX_INFO_STRING ; 
 size_t PERS_SCORE ; 
 scalar_t__ TEAM_SPECTATOR ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,char*,int) ; 

char *FUNC7(void) {
	int i, worstscore, bestclient;
	char buf[MAX_INFO_STRING];
	static char name[32];
	static int maxclients;
	playerState_t ps;

	if (!maxclients)
		maxclients = FUNC5("sv_maxclients");

	worstscore = 999999;
	bestclient = 0;
	for (i = 0; i < maxclients && i < MAX_CLIENTS; i++) {
		FUNC6(CS_PLAYERS+i, buf, sizeof(buf));
		//if no config string or no name
		if (!FUNC4(buf) || !FUNC4(FUNC2(buf, "n"))) continue;
		//skip spectators
		if (FUNC3(FUNC2(buf, "t")) == TEAM_SPECTATOR) continue;
		//
		FUNC0(i, &ps);
		if (ps.persistant[PERS_SCORE] < worstscore) {
			worstscore = ps.persistant[PERS_SCORE];
			bestclient = i;
		}
	}
	FUNC1(bestclient, name, 32);
	return name;
}