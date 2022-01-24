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
struct TYPE_10__ {int /*<<< orphan*/  client; scalar_t__* origin; } ;
typedef  TYPE_1__ bot_movestate_t ;
struct TYPE_11__ {int /*<<< orphan*/  movedir; } ;
typedef  TYPE_2__ bot_moveresult_t ;
struct TYPE_12__ {scalar_t__* start; } ;
typedef  TYPE_3__ aas_reachability_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,scalar_t__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__*,float) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int /*<<< orphan*/ ) ; 
 float FUNC5 (scalar_t__*) ; 
 int /*<<< orphan*/  qtrue ; 

bot_moveresult_t FUNC6(bot_movestate_t *ms, aas_reachability_t *reach)
{
	float dist, speed;
	vec3_t hordir;
	bot_moveresult_t result;

	FUNC1(&result);
	//walk straight to reachability start
	hordir[0] = reach->start[0] - ms->origin[0];
	hordir[1] = reach->start[1] - ms->origin[1];
	hordir[2] = 0;
	dist = FUNC5(hordir);
	//
	FUNC0(ms, hordir, qtrue, &result);
	//if pretty close to the barrier
	if (dist < 9)
	{
		FUNC2(ms->client);
	} //end if
	else
	{
		if (dist > 60) dist = 60;
		speed = 360 - (360 - 6 * dist);
		FUNC3(ms->client, hordir, speed);
	} //end else
	FUNC4(hordir, result.movedir);
	//
	return result;
}