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
typedef  int* vec3_t ;
typedef  int /*<<< orphan*/  value ;
struct TYPE_4__ {int* origin; int areanum; } ;
typedef  TYPE_1__ bot_goal_t ;

/* Variables and functions */
 int MAX_INFO_STRING ; 
 int /*<<< orphan*/  FUNC0 (int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int qfalse ; 
 int qtrue ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int*,int*,int*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int*) ; 

int FUNC7( char *classname, bot_goal_t *goal ) {
	char value[MAX_INFO_STRING];
	vec3_t origin, start, end;
	int ent, numareas, areas[10];

	FUNC1(goal, 0, sizeof(bot_goal_t));
	for (ent = FUNC3(0); ent; ent = FUNC3(ent)) {
		if (!FUNC5(ent, "classname", value, sizeof(value)))
			continue;
		if (!FUNC2(value, classname)) {
			if (!FUNC6(ent, "origin", origin))
				return qfalse;
			FUNC0(origin, goal->origin);
			FUNC0(origin, start);
			start[2] -= 32;
			FUNC0(origin, end);
			end[2] += 32;
			numareas = FUNC4(start, end, areas, NULL, 10);
			if (!numareas)
				return qfalse;
			goal->areanum = areas[0];
			return qtrue;
		}
	}
	return qfalse;
}