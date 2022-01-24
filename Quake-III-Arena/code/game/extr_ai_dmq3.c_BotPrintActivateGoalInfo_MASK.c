#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  netname ;
typedef  int /*<<< orphan*/  classname ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_7__ {int /*<<< orphan*/  client; } ;
typedef  TYPE_2__ bot_state_t ;
struct TYPE_6__ {int /*<<< orphan*/  areanum; int /*<<< orphan*/ * origin; } ;
struct TYPE_8__ {TYPE_1__ goal; scalar_t__ shoot; } ;
typedef  TYPE_3__ bot_activategoal_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MAX_NETNAME ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

void FUNC4(bot_state_t *bs, bot_activategoal_t *activategoal, int bspent) {
	char netname[MAX_NETNAME];
	char classname[128];
	char buf[128];

	FUNC0(bs->client, netname, sizeof(netname));
	FUNC2(bspent, "classname", classname, sizeof(classname));
	if (activategoal->shoot) {
		FUNC1(buf, sizeof(buf), "%s: I have to shoot at a %s from %1.1f %1.1f %1.1f in area %d\n",
						netname, classname,
						activategoal->goal.origin[0],
						activategoal->goal.origin[1],
						activategoal->goal.origin[2],
						activategoal->goal.areanum);
	}
	else {
		FUNC1(buf, sizeof(buf), "%s: I have to activate a %s at %1.1f %1.1f %1.1f in area %d\n",
						netname, classname,
						activategoal->goal.origin[0],
						activategoal->goal.origin[1],
						activategoal->goal.origin[2],
						activategoal->goal.areanum);
	}
	FUNC3(bs->client, buf);
}