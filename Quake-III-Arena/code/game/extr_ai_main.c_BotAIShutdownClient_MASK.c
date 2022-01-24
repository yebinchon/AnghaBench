#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ qboolean ;
struct TYPE_7__ {int inuse; int /*<<< orphan*/  patrolpoints; int /*<<< orphan*/  checkpoints; int /*<<< orphan*/  character; int /*<<< orphan*/  ws; int /*<<< orphan*/  cs; int /*<<< orphan*/  gs; int /*<<< orphan*/  ms; int /*<<< orphan*/  client; } ;
typedef  TYPE_1__ bot_state_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  CHAT_ALL ; 
 TYPE_1__** botstates ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  numbots ; 
 int qfalse ; 
 int qtrue ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

int FUNC11(int client, qboolean restart) {
	bot_state_t *bs;

	bs = botstates[client];
	if (!bs || !bs->inuse) {
		//BotAI_Print(PRT_ERROR, "BotAIShutdownClient: client %d already shutdown\n", client);
		return qfalse;
	}

	if (restart) {
		FUNC3(bs);
	}

	if (FUNC0(bs)) {
		FUNC5(bs->cs, bs->client, CHAT_ALL);
	}

	FUNC9(bs->ms);
	//free the goal state`			
	FUNC8(bs->gs);
	//free the chat file
	FUNC7(bs->cs);
	//free the weapon weights
	FUNC10(bs->ws);
	//free the bot character
	FUNC6(bs->character);
	//
	FUNC2(bs->checkpoints);
	FUNC2(bs->patrolpoints);
	//clear activate goal stack
	FUNC1(bs);
	//clear the bot state
	FUNC4(bs, 0, sizeof(bot_state_t));
	//set the inuse flag to qfalse
	bs->inuse = qfalse;
	//there's one bot less
	numbots--;
	//everything went ok
	return qtrue;
}