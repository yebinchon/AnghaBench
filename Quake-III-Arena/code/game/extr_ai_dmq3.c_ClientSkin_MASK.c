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
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char*,int) ; 

char *FUNC4(int client, char *skin, int size) {
	char buf[MAX_INFO_STRING];

	if (client < 0 || client >= MAX_CLIENTS) {
		FUNC0(PRT_ERROR, "ClientSkin: client out of range\n");
		return "[client out of range]";
	}
	FUNC3(CS_PLAYERS+client, buf, sizeof(buf));
	FUNC2(skin, FUNC1(buf, "model"), size-1);
	skin[size-1] = '\0';
	return skin;
}