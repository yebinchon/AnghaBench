#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ lastchat_time; int /*<<< orphan*/  chatto; int /*<<< orphan*/  client; int /*<<< orphan*/  character; } ;
typedef  TYPE_1__ bot_state_t ;
struct TYPE_10__ {int /*<<< orphan*/  integer; } ;
struct TYPE_9__ {scalar_t__ integer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  CHARACTERISTIC_CHAT_ENTEREXITGAME ; 
 int /*<<< orphan*/  CHAT_ALL ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ GT_TOURNAMENT ; 
 scalar_t__ TIME_BETWEENCHATTING ; 
 scalar_t__ FUNC7 () ; 
 TYPE_3__ bot_fastchat ; 
 TYPE_2__ bot_nochat ; 
 scalar_t__ gametype ; 
 int qfalse ; 
 int qtrue ; 
 float FUNC8 () ; 
 float FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC10(bot_state_t *bs) {
	char name[32];
	float rnd;

	if (bot_nochat.integer) return qfalse;
	if (bs->lastchat_time > FUNC6() - TIME_BETWEENCHATTING) return qfalse;
	//don't chat in teamplay
	if (FUNC7()) return qfalse;
	// don't chat in tournament mode
	if (gametype == GT_TOURNAMENT) return qfalse;
	rnd = FUNC9(bs->character, CHARACTERISTIC_CHAT_ENTEREXITGAME, 0, 1);
	if (!bot_fastchat.integer) {
		if (FUNC8() > rnd) return qfalse;
	}
	if (FUNC2() <= 1) return qfalse;
	if (!FUNC4(bs)) return qfalse;
	FUNC0(bs, "game_enter",
				FUNC5(bs->client, name, 32),	// 0
				FUNC3(bs),				// 1
				"[invalid var]",						// 2
				"[invalid var]",						// 3
				FUNC1(),							// 4
				NULL);
	bs->lastchat_time = FUNC6();
	bs->chatto = CHAT_ALL;
	return qtrue;
}