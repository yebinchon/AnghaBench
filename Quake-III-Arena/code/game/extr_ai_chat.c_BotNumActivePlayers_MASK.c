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

/* Variables and functions */
 scalar_t__ CS_PLAYERS ; 
 char* FUNC0 (char*,char*) ; 
 int MAX_CLIENTS ; 
 int MAX_INFO_STRING ; 
 scalar_t__ TEAM_SPECTATOR ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char*,int) ; 

int FUNC5(void) {
	int i, num;
	char buf[MAX_INFO_STRING];
	static int maxclients;

	if (!maxclients)
		maxclients = FUNC3("sv_maxclients");

	num = 0;
	for (i = 0; i < maxclients && i < MAX_CLIENTS; i++) {
		FUNC4(CS_PLAYERS+i, buf, sizeof(buf));
		//if no config string or no name
		if (!FUNC2(buf) || !FUNC2(FUNC0(buf, "n"))) continue;
		//skip spectators
		if (FUNC1(FUNC0(buf, "t")) == TEAM_SPECTATOR) continue;
		//
		num++;
	}
	return num;
}