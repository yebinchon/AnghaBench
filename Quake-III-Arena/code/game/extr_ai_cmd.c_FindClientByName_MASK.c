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
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int MAX_CLIENTS ; 
 int MAX_INFO_STRING ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int FUNC3 (char*) ; 

int FUNC4(char *name) {
	int i;
	char buf[MAX_INFO_STRING];
	static int maxclients;

	if (!maxclients)
		maxclients = FUNC3("sv_maxclients");
	for (i = 0; i < maxclients && i < MAX_CLIENTS; i++) {
		FUNC0(i, buf, sizeof(buf));
		if (!FUNC1(buf, name)) return i;
	}
	for (i = 0; i < maxclients && i < MAX_CLIENTS; i++) {
		FUNC0(i, buf, sizeof(buf));
		if (FUNC2(buf, name)) return i;
	}
	return -1;
}