#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int integer; } ;
struct TYPE_6__ {int /*<<< orphan*/  client; scalar_t__ inuse; } ;
struct TYPE_5__ {int /*<<< orphan*/  string; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXEC_INSERT ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ GT_TOURNAMENT ; 
 int MAX_CLIENTS ; 
 int /*<<< orphan*/  bot_interbreed ; 
 TYPE_4__ bot_interbreedbots ; 
 TYPE_1__ bot_interbreedchar ; 
 TYPE_2__** botstates ; 
 scalar_t__ gametype ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC7 (char*,scalar_t__,...) ; 

void FUNC8(void) {
	int i;

	FUNC5(&bot_interbreedchar);
	if (!FUNC2(bot_interbreedchar.string)) return;
	//make sure we are in tournament mode
	if (gametype != GT_TOURNAMENT) {
		FUNC4("g_gametype", FUNC7("%d", GT_TOURNAMENT));
		FUNC1();
		return;
	}
	//shutdown all the bots
	for (i = 0; i < MAX_CLIENTS; i++) {
		if (botstates[i] && botstates[i]->inuse) {
			FUNC0(botstates[i]->client, qfalse);
		}
	}
	//make sure all item weight configs are reloaded and Not shared
	FUNC3("bot_reloadcharacters", "1");
	//add a number of bots using the desired bot character
	for (i = 0; i < bot_interbreedbots.integer; i++) {
		FUNC6( EXEC_INSERT, FUNC7("addbot %s 4 free %i %s%d\n",
						bot_interbreedchar.string, i * 50, bot_interbreedchar.string, i) );
	}
	//
	FUNC4("bot_interbreedchar", "");
	bot_interbreed = qtrue;
}