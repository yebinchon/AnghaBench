#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  netname ;
struct TYPE_4__ {int /*<<< orphan*/  teamleader; } ;
typedef  TYPE_1__ bot_state_t ;
typedef  int /*<<< orphan*/  bot_match_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int FUNC1 (char*) ; 
 int MAX_NETNAME ; 
 int /*<<< orphan*/  NETNAME ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 

void FUNC4(bot_state_t *bs, bot_match_t *match) {
	int client;
	char netname[MAX_NETNAME];

	FUNC3(match, NETNAME, netname, sizeof(netname));
	client = FUNC1(netname);
	if (!FUNC0(bs, client))
		return;
	FUNC2(bs->teamleader, netname, sizeof(bs->teamleader));
}