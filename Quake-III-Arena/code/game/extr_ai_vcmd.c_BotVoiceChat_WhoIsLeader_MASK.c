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
typedef  int /*<<< orphan*/  netname ;
struct TYPE_5__ {int /*<<< orphan*/  cs; int /*<<< orphan*/  teamleader; int /*<<< orphan*/  client; } ;
typedef  TYPE_1__ bot_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CHAT_TEAM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int MAX_MESSAGE_SIZE ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  VOICECHAT_STARTLEADER ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(bot_state_t *bs, int client, int mode) {
	char netname[MAX_MESSAGE_SIZE];

	if (!FUNC4()) return;

	FUNC2(bs->client, netname, sizeof(netname));
	//if this bot IS the team leader
	if (!FUNC3(netname, bs->teamleader)) {
		FUNC0(bs, "iamteamleader", NULL);
		FUNC5(bs->cs, 0, CHAT_TEAM);
		FUNC1(bs, -1, VOICECHAT_STARTLEADER);
	}
}