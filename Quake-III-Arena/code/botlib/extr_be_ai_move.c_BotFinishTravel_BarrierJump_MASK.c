#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__* vec3_t ;
struct TYPE_10__ {int* velocity; int /*<<< orphan*/  client; scalar_t__* origin; } ;
typedef  TYPE_1__ bot_movestate_t ;
struct TYPE_11__ {int /*<<< orphan*/  movedir; } ;
typedef  TYPE_2__ bot_moveresult_t ;
struct TYPE_12__ {scalar_t__* end; } ;
typedef  TYPE_3__ aas_reachability_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,scalar_t__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ ) ; 
 float FUNC4 (scalar_t__*) ; 
 int /*<<< orphan*/  qtrue ; 

bot_moveresult_t FUNC5(bot_movestate_t *ms, aas_reachability_t *reach)
{
	float dist;
	vec3_t hordir;
	bot_moveresult_t result;

	FUNC1(&result);
	//if near the top or going down
	if (ms->velocity[2] < 250)
	{
		hordir[0] = reach->end[0] - ms->origin[0];
		hordir[1] = reach->end[1] - ms->origin[1];
		hordir[2] = 0;
		dist = FUNC4(hordir);
		//
		FUNC0(ms, hordir, qtrue, &result);
		//
		FUNC2(ms->client, hordir, 400);
		FUNC3(hordir, result.movedir);
	} //end if
	//
	return result;
}