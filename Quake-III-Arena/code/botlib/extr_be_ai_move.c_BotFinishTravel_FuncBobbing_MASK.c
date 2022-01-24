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
struct TYPE_10__ {int moveflags; int /*<<< orphan*/  client; scalar_t__* origin; } ;
typedef  TYPE_1__ bot_movestate_t ;
struct TYPE_11__ {int /*<<< orphan*/  movedir; int /*<<< orphan*/  flags; } ;
typedef  TYPE_2__ bot_moveresult_t ;
struct TYPE_12__ {scalar_t__* end; } ;
typedef  TYPE_3__ aas_reachability_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__*,float) ; 
 int MFL_SWIMMING ; 
 int /*<<< orphan*/  MOVERESULT_SWIMVIEW ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int /*<<< orphan*/ ) ; 
 float FUNC5 (scalar_t__*) ; 
 float FUNC6 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,scalar_t__*,scalar_t__*) ; 

bot_moveresult_t FUNC8(bot_movestate_t *ms, aas_reachability_t *reach)
{
	vec3_t bob_origin, bob_start, bob_end, dir, hordir, bottomcenter;
	bot_moveresult_t result;
	float dist, speed;

	FUNC0(&result);
	//
	FUNC1(reach, bob_start, bob_end, bob_origin);
	//
	FUNC7(bob_origin, bob_end, dir);
	dist = FUNC5(dir);
	//if the func_bobbing is near the end
	if (dist < 16)
	{
		FUNC7(reach->end, ms->origin, hordir);
		if (!(ms->moveflags & MFL_SWIMMING)) hordir[2] = 0;
		dist = FUNC6(hordir);
		//
		if (dist > 60) dist = 60;
		speed = 360 - (360 - 6 * dist);
		//
		if (speed > 5) FUNC2(ms->client, dir, speed);
		FUNC4(dir, result.movedir);
		//
		if (ms->moveflags & MFL_SWIMMING) result.flags |= MOVERESULT_SWIMVIEW;
	} //end if
	else
	{
		FUNC3(reach, bottomcenter);
		FUNC7(bottomcenter, ms->origin, hordir);
		if (!(ms->moveflags & MFL_SWIMMING)) hordir[2] = 0;
		dist = FUNC6(hordir);
		//
		if (dist > 5)
		{
			//move to the center of the plat
			if (dist > 100) dist = 100;
			speed = 400 - (400 - 4 * dist);
			//
			FUNC2(ms->client, hordir, speed);
			FUNC4(hordir, result.movedir);
		} //end if
	} //end else
	return result;
}