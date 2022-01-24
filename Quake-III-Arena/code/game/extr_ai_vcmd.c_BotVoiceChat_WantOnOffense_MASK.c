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
typedef  int /*<<< orphan*/  netname ;
struct TYPE_7__ {int /*<<< orphan*/  client; int /*<<< orphan*/  cs; } ;
typedef  TYPE_1__ bot_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  ACTION_AFFIRMATIVE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,char*,int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CHAT_TELL ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int) ; 
 int MAX_NETNAME ; 
 int TEAMTP_ATTACKER ; 
 int TEAMTP_DEFENDER ; 
 int /*<<< orphan*/  VOICECHAT_YES ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC7(bot_state_t *bs, int client, int mode) {
	char netname[MAX_NETNAME];
	int preference;

	preference = FUNC1(bs, client);
	preference &= ~TEAMTP_DEFENDER;
	preference |= TEAMTP_ATTACKER;
	FUNC2(bs, client, preference);
	//
	FUNC4(client, netname, sizeof(netname));
	FUNC0(bs, "keepinmind", netname, NULL);
	FUNC5(bs->cs, client, CHAT_TELL);
	FUNC3(bs, client, VOICECHAT_YES);
	FUNC6(bs->client, ACTION_AFFIRMATIVE);
}