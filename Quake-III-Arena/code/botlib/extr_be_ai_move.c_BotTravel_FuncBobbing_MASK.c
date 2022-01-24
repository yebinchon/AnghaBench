#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__* vec3_t ;
struct TYPE_15__ {int moveflags; int /*<<< orphan*/  client; scalar_t__* origin; scalar_t__ reachability_time; int /*<<< orphan*/  entitynum; } ;
typedef  TYPE_1__ bot_movestate_t ;
struct TYPE_16__ {int /*<<< orphan*/  flags; scalar_t__* movedir; int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ bot_moveresult_t ;
struct TYPE_17__ {scalar_t__* start; scalar_t__* end; } ;
typedef  TYPE_3__ aas_reachability_t ;
struct TYPE_18__ {int /*<<< orphan*/  (* Print ) (int /*<<< orphan*/ ,char*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC4 (scalar_t__*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ FUNC5 (scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__*,float) ; 
 int MFL_SWIMMING ; 
 int /*<<< orphan*/  MOVERESULT_SWIMVIEW ; 
 int /*<<< orphan*/  MOVERESULT_WAITING ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,scalar_t__*) ; 
 int /*<<< orphan*/  PRT_MESSAGE ; 
 int /*<<< orphan*/  RESULTTYPE_WAITFORFUNCBOBBING ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*,scalar_t__*) ; 
 int FUNC9 (scalar_t__*) ; 
 float FUNC10 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__*,scalar_t__*,scalar_t__*) ; 
 TYPE_4__ botimport ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*) ; 

bot_moveresult_t FUNC20(bot_movestate_t *ms, aas_reachability_t *reach)
{
	vec3_t dir, dir1, dir2, hordir, bottomcenter, bob_start, bob_end, bob_origin;
	float dist, dist1, dist2, speed;
	bot_moveresult_t result;

	FUNC2(&result);
	//
	FUNC3(reach, bob_start, bob_end, bob_origin);
	//if standing ontop of the func_bobbing
	if (FUNC4(ms->origin, ms->entitynum, reach))
	{
#ifdef DEBUG_FUNCBOB
		botimport.Print(PRT_MESSAGE, "bot on func_bobbing\n");
#endif
		//if near end point of reachability
		FUNC11(bob_origin, bob_end, dir);
		if (FUNC9(dir) < 24)
		{
#ifdef DEBUG_FUNCBOB
			botimport.Print(PRT_MESSAGE, "bot moving to reachability end\n");
#endif
			//move to the end point
			FUNC11(reach->end, ms->origin, hordir);
			hordir[2] = 0;
			FUNC10(hordir);
			if (!FUNC0(ms, hordir, 100))
			{
				FUNC6(ms->client, hordir, 400);
			} //end if
			FUNC8(hordir, result.movedir);
		} //end else
		//if not really close to the center of the elevator
		else
		{
			FUNC7(reach, bottomcenter);
			FUNC11(bottomcenter, ms->origin, hordir);
			hordir[2] = 0;
			dist = FUNC10(hordir);
			//
			if (dist > 10)
			{
#ifdef DEBUG_FUNCBOB
				botimport.Print(PRT_MESSAGE, "bot moving to func_bobbing center\n");
#endif
				//move to the center of the plat
				if (dist > 100) dist = 100;
				speed = 400 - (400 - 4 * dist);
				//
				FUNC6(ms->client, hordir, speed);
				FUNC8(hordir, result.movedir);
			} //end if
		} //end else
	} //end if
	else
	{
#ifdef DEBUG_FUNCBOB
		botimport.Print(PRT_MESSAGE, "bot not ontop of func_bobbing\n");
#endif
		//if very near the reachability end
		FUNC11(reach->end, ms->origin, dir);
		dist = FUNC9(dir);
		if (dist < 64)
		{
#ifdef DEBUG_FUNCBOB
			botimport.Print(PRT_MESSAGE, "bot moving to end\n");
#endif
			if (dist > 60) dist = 60;
			speed = 360 - (360 - 6 * dist);
			//if swimming or no barrier jump
			if ((ms->moveflags & MFL_SWIMMING) || !FUNC0(ms, dir, 50))
			{
				if (speed > 5) FUNC6(ms->client, dir, speed);
			} //end if
			FUNC8(dir, result.movedir);
			//
			if (ms->moveflags & MFL_SWIMMING) result.flags |= MOVERESULT_SWIMVIEW;
			//stop using this reachability
			ms->reachability_time = 0;
			return result;
		} //end if
		//get direction and distance to reachability start
		FUNC11(reach->start, ms->origin, dir1);
		if (!(ms->moveflags & MFL_SWIMMING)) dir1[2] = 0;
		dist1 = FUNC10(dir1);
		//if func_bobbing is Not it's start position
		FUNC11(bob_origin, bob_start, dir);
		if (FUNC9(dir) > 16)
		{
#ifdef DEBUG_FUNCBOB
			botimport.Print(PRT_MESSAGE, "func_bobbing not at start\n");
#endif
			dist = dist1;
			FUNC8(dir1, dir);
			//
			FUNC1(ms, dir, qfalse, &result);
			//
			if (dist > 60) dist = 60;
			speed = 360 - (360 - 6 * dist);
			//
			if (!(ms->moveflags & MFL_SWIMMING) && !FUNC0(ms, dir, 50))
			{
				if (speed > 5) FUNC6(ms->client, dir, speed);
			} //end if
			FUNC8(dir, result.movedir);
			//
			if (ms->moveflags & MFL_SWIMMING) result.flags |= MOVERESULT_SWIMVIEW;
			//this isn't a failure... just wait till the func_bobbing arrives
			result.type = RESULTTYPE_WAITFORFUNCBOBBING;
			result.flags |= MOVERESULT_WAITING;
			return result;
		} //end if
		//get direction and distance to func_bob bottom center
		FUNC7(reach, bottomcenter);
		FUNC11(bottomcenter, ms->origin, dir2);
		if (!(ms->moveflags & MFL_SWIMMING)) dir2[2] = 0;
		dist2 = FUNC10(dir2);
		//if very close to the reachability start or
		//closer to the elevator center or
		//between reachability start and func_bobbing center
		if (dist1 < 20 || dist2 < dist1 || FUNC5(dir1, dir2) < 0)
		{
#ifdef DEBUG_FUNCBOB
			botimport.Print(PRT_MESSAGE, "bot moving to func_bobbing center\n");
#endif
			dist = dist2;
			FUNC8(dir2, dir);
		} //end if
		else //closer to the reachability start
		{
#ifdef DEBUG_FUNCBOB
			botimport.Print(PRT_MESSAGE, "bot moving to reachability start\n");
#endif
			dist = dist1;
			FUNC8(dir1, dir);
		} //end else
		//
		FUNC1(ms, dir, qfalse, &result);
		//
		if (dist > 60) dist = 60;
		speed = 400 - (400 - 6 * dist);
		//
		if (!(ms->moveflags & MFL_SWIMMING) && !FUNC0(ms, dir, 50))
		{
			FUNC6(ms->client, dir, speed);
		} //end if
		FUNC8(dir, result.movedir);
		//
		if (ms->moveflags & MFL_SWIMMING) result.flags |= MOVERESULT_SWIMVIEW;
	} //end else
	return result;
}