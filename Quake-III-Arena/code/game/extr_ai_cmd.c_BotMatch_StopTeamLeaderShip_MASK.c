#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  teammate ;
typedef  int /*<<< orphan*/  netname ;
struct TYPE_6__ {char* teamleader; } ;
typedef  TYPE_1__ bot_state_t ;
struct TYPE_7__ {int subtype; } ;
typedef  TYPE_2__ bot_match_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int FUNC1 (char*) ; 
 int MAX_MESSAGE_SIZE ; 
 int /*<<< orphan*/  NETNAME ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int ST_I ; 
 int /*<<< orphan*/  TEAMMATE ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * notleader ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,char*,int) ; 

void FUNC5(bot_state_t *bs, bot_match_t *match) {
	int client;
	char teammate[MAX_MESSAGE_SIZE];
	char netname[MAX_MESSAGE_SIZE];

	if (!FUNC3()) return;
	//get the team mate that stops being the team leader
	FUNC4(match, TEAMMATE, teammate, sizeof(teammate));
	//if chats for him or herself
	if (match->subtype & ST_I) {
		FUNC4(match, NETNAME, netname, sizeof(netname));
		client = FUNC1(netname);
	}
	//chats for someone else
	else {
		client = FUNC1(teammate);
	} //end else
	if (client >= 0) {
		if (!FUNC2(bs->teamleader, FUNC0(client, netname, sizeof(netname)))) {
			bs->teamleader[0] = '\0';
			notleader[client] = qtrue;
		}
	}
}