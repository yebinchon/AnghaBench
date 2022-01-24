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
struct TYPE_7__ {int decisionmaker; int /*<<< orphan*/  cs; scalar_t__ lastgoal_ltgtype; scalar_t__ lead_time; scalar_t__ ltgtype; } ;
typedef  TYPE_1__ bot_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CHAT_TELL ; 
 int /*<<< orphan*/  VOICECHAT_ONPATROL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void FUNC5(bot_state_t *bs, int client, int mode) {
	//
	bs->decisionmaker = client;
	//
	bs->ltgtype = 0;
	bs->lead_time = 0;
	bs->lastgoal_ltgtype = 0;
	//
	FUNC0(bs, "dismissed", NULL);
	FUNC4(bs->cs, client, CHAT_TELL);
	FUNC3(bs, -1, VOICECHAT_ONPATROL);
	//
	FUNC2(bs);
#ifdef DEBUG
	BotPrintTeamGoal(bs);
#endif //DEBUG
}