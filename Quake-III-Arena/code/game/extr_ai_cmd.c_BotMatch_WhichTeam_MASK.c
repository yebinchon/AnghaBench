#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  client; int /*<<< orphan*/  cs; int /*<<< orphan*/  subteam; } ;
typedef  TYPE_1__ bot_state_t ;
typedef  int /*<<< orphan*/  bot_match_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CHAT_TEAM ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(bot_state_t *bs, bot_match_t *match) {
	if (!FUNC2()) return;
	//if not addressed to this bot
	if (!FUNC1(bs, match)) return;
	//
	if (FUNC3(bs->subteam)) {
		FUNC0(bs, "inteam", &bs->subteam, NULL);
	}
	else {
		FUNC0(bs, "noteam", NULL);
	}
	FUNC4(bs->cs, bs->client, CHAT_TEAM);
}