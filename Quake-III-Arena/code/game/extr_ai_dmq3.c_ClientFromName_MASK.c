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
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int MAX_CLIENTS ; 
 int MAX_INFO_STRING ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char*,int) ; 

int FUNC5(char *name) {
	int i;
	char buf[MAX_INFO_STRING];
	static int maxclients;

	if (!maxclients)
		maxclients = FUNC3("sv_maxclients");
	for (i = 0; i < maxclients && i < MAX_CLIENTS; i++) {
		FUNC4(CS_PLAYERS+i, buf, sizeof(buf));
		FUNC1( buf );
		if (!FUNC2(FUNC0(buf, "n"), name)) return i;
	}
	return -1;
}