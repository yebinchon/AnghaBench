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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ CS_PLAYERS ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int MAX_CLIENTS ; 
 int MAX_INFO_STRING ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char*,int) ; 

int FUNC6(bot_state_t *bs, char *name) {
	int i;
	char buf[MAX_INFO_STRING];
	static int maxclients;

	if (!maxclients)
		maxclients = FUNC4("sv_maxclients");
	for (i = 0; i < maxclients && i < MAX_CLIENTS; i++) {
		if (!FUNC0(bs, i))
			continue;
		FUNC5(CS_PLAYERS+i, buf, sizeof(buf));
		FUNC2( buf );
		if (!FUNC3(FUNC1(buf, "n"), name)) return i;
	}
	return -1;
}