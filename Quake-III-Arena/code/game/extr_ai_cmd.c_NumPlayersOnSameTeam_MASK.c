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
typedef  int /*<<< orphan*/  bot_state_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ CS_PLAYERS ; 
 int MAX_CLIENTS ; 
 int MAX_INFO_STRING ; 
 scalar_t__ FUNC1 (char*) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char*,int) ; 

int FUNC4(bot_state_t *bs) {
	int i, num;
	char buf[MAX_INFO_STRING];
	static int maxclients;

	if (!maxclients)
		maxclients = FUNC2("sv_maxclients");

	num = 0;
	for (i = 0; i < maxclients && i < MAX_CLIENTS; i++) {
		FUNC3(CS_PLAYERS+i, buf, MAX_INFO_STRING);
		if (FUNC1(buf)) {
			if (FUNC0(bs, i+1)) num++;
		}
	}
	return num;
}