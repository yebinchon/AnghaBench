#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int redflagstatus; int blueflagstatus; } ;
typedef  TYPE_1__ bot_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 scalar_t__ TEAM_RED ; 

void FUNC5(bot_state_t *bs) {
	int flagstatus;

	//
	if (FUNC4(bs) == TEAM_RED) flagstatus = bs->redflagstatus * 2 + bs->blueflagstatus;
	else flagstatus = bs->blueflagstatus * 2 + bs->redflagstatus;
	//
	switch(flagstatus) {
		case 0: FUNC0(bs); break;
		case 1: FUNC2(bs); break;
		case 2: FUNC3(bs); break;
		case 3: FUNC1(bs); break;
	}
}