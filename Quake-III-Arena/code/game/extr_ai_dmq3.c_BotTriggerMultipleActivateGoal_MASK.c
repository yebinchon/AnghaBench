#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int* vec3_t ;
typedef  int /*<<< orphan*/  model ;
typedef  int /*<<< orphan*/  bot_state_t ;
struct TYPE_4__ {int* origin; int areanum; int entitynum; scalar_t__ flags; scalar_t__ number; int /*<<< orphan*/  maxs; int /*<<< orphan*/  mins; } ;
struct TYPE_5__ {int shoot; int* target; TYPE_1__ goal; } ;
typedef  TYPE_2__ bot_activategoal_t ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  CONTENTS_TRIGGER ; 
 int /*<<< orphan*/  FUNC1 (int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int*,double,int*) ; 
 int /*<<< orphan*/  FUNC5 (int*,int*,int /*<<< orphan*/ ) ; 
 int FUNC6 (char*) ; 
 int qfalse ; 
 int qtrue ; 
 scalar_t__ FUNC7 (int) ; 
 int FUNC8 (int*,int*,int*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,char*,int) ; 

int FUNC10(bot_state_t *bs, int bspent, bot_activategoal_t *activategoal) {
	int i, areas[10], numareas, modelindex, entitynum;
	char model[128];
	vec3_t start, end, mins, maxs, angles;
	vec3_t origin, goalorigin;

	activategoal->shoot = qfalse;
	FUNC2(activategoal->target);
	//create a bot goal towards the trigger
	FUNC9(bspent, "model", model, sizeof(model));
	if (!*model)
		return qfalse;
	modelindex = FUNC6(model+1);
	if (!modelindex)
		return qfalse;
	FUNC2(angles);
	entitynum = FUNC0(modelindex, 0, CONTENTS_TRIGGER, mins, maxs);
	//trigger origin
	FUNC1(mins, maxs, origin);
	FUNC4(origin, 0.5, origin);
	FUNC3(origin, goalorigin);
	//
	FUNC3(goalorigin, start);
	start[2] += 24;
	FUNC3(start, end);
	end[2] -= 100;
	numareas = FUNC8(start, end, areas, NULL, 10);
	//
	for (i = 0; i < numareas; i++) {
		if (FUNC7(areas[i])) {
			break;
		}
	}
	if (i < numareas) {
		FUNC3(origin, activategoal->goal.origin);
		activategoal->goal.areanum = areas[i];
		FUNC5(mins, origin, activategoal->goal.mins);
		FUNC5(maxs, origin, activategoal->goal.maxs);
		//
		activategoal->goal.entitynum = entitynum;
		activategoal->goal.number = 0;
		activategoal->goal.flags = 0;
		return qtrue;
	}
	return qfalse;
}