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

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int MAX_TOKEN_CHARS ; 
 int /*<<< orphan*/ * g_botInfos ; 
 int g_numBots ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*,char*,char*,char*,char*) ; 

void FUNC4( void ) {
	int i;
	char name[MAX_TOKEN_CHARS];
	char funname[MAX_TOKEN_CHARS];
	char model[MAX_TOKEN_CHARS];
	char aifile[MAX_TOKEN_CHARS];

	FUNC2("^1name             model            aifile              funname\n");
	for (i = 0; i < g_numBots; i++) {
		FUNC1(name, FUNC0( g_botInfos[i], "name" ));
		if ( !*name ) {
			FUNC1(name, "UnnamedPlayer");
		}
		FUNC1(funname, FUNC0( g_botInfos[i], "funname" ));
		if ( !*funname ) {
			FUNC1(funname, "");
		}
		FUNC1(model, FUNC0( g_botInfos[i], "model" ));
		if ( !*model ) {
			FUNC1(model, "visor/default");
		}
		FUNC1(aifile, FUNC0( g_botInfos[i], "aifile"));
		if (!*aifile ) {
			FUNC1(aifile, "bots/default_c.c");
		}
		FUNC2(FUNC3("%-16s %-16s %-20s %-20s\n", name, model, aifile, funname));
	}
}