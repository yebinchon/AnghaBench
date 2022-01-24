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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ CS_PLAYERS ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int MAX_CLIENTS ; 
 int MAX_INFO_STRING ; 
 int /*<<< orphan*/  PRT_ERROR ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char*,int) ; 

char *FUNC5(int client, char *name, int size) {
	char buf[MAX_INFO_STRING];

	if (client < 0 || client >= MAX_CLIENTS) {
		FUNC0(PRT_ERROR, "ClientName: client out of range\n");
		return "[client out of range]";
	}
	FUNC4(CS_PLAYERS+client, buf, sizeof(buf));
	FUNC3(name, FUNC1(buf, "n"), size-1);
	name[size-1] = '\0';
	FUNC2( name );
	return name;
}