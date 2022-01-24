#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__* vec3_t ;
struct TYPE_16__ {int moveflags; int /*<<< orphan*/  client; scalar_t__* origin; scalar_t__ reachability_time; int /*<<< orphan*/  entitynum; } ;
typedef  TYPE_1__ bot_movestate_t ;
struct TYPE_17__ {int /*<<< orphan*/  flags; scalar_t__* movedir; int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ bot_moveresult_t ;
struct TYPE_18__ {scalar_t__* start; scalar_t__* end; } ;
typedef  TYPE_3__ aas_reachability_t ;
struct TYPE_20__ {int /*<<< orphan*/  (* Print ) (int /*<<< orphan*/ ,char*) ;} ;
struct TYPE_19__ {scalar_t__ value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (scalar_t__*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ FUNC4 (scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__*,float) ; 
 int MFL_SWIMMING ; 
 int /*<<< orphan*/  MOVERESULT_SWIMVIEW ; 
 int /*<<< orphan*/  MOVERESULT_WAITING ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  PRT_MESSAGE ; 
 int /*<<< orphan*/  RESULTTYPE_ELEVATORUP ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*,scalar_t__*) ; 
 float FUNC9 (scalar_t__*) ; 
 float FUNC10 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__*,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 TYPE_5__ botimport ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*) ; 
 TYPE_4__* sv_maxbarrier ; 

bot_moveresult_t FUNC20(bot_movestate_t *ms, aas_reachability_t *reach)
{
	vec3_t dir, dir1, dir2, hordir, bottomcenter;
	float dist, dist1, dist2, speed;
	bot_moveresult_t result;

	FUNC2(&result);
	//if standing on the plat
	if (FUNC3(ms->origin, ms->entitynum, reach))
	{
#ifdef DEBUG_ELEVATOR
		botimport.Print(PRT_MESSAGE, "bot on elevator\n");
#endif //DEBUG_ELEVATOR
		//if vertically not too far from the end point
		if (FUNC12(ms->origin[2] - reach->end[2]) < sv_maxbarrier->value)
		{
#ifdef DEBUG_ELEVATOR
			botimport.Print(PRT_MESSAGE, "bot moving to end\n");
#endif //DEBUG_ELEVATOR
			//move to the end point
			FUNC11(reach->end, ms->origin, hordir);
			hordir[2] = 0;
			FUNC10(hordir);
			if (!FUNC0(ms, hordir, 100))
			{
				FUNC5(ms->client, hordir, 400);
			} //end if
			FUNC8(hordir, result.movedir);
		} //end else
		//if not really close to the center of the elevator
		else
		{
			FUNC6(reach, bottomcenter);
			FUNC11(bottomcenter, ms->origin, hordir);
			hordir[2] = 0;
			dist = FUNC10(hordir);
			//
			if (dist > 10)
			{
#ifdef DEBUG_ELEVATOR
				botimport.Print(PRT_MESSAGE, "bot moving to center\n");
#endif //DEBUG_ELEVATOR
				//move to the center of the plat
				if (dist > 100) dist = 100;
				speed = 400 - (400 - 4 * dist);
				//
				FUNC5(ms->client, hordir, speed);
				FUNC8(hordir, result.movedir);
			} //end if
		} //end else
	} //end if
	else
	{
#ifdef DEBUG_ELEVATOR
		botimport.Print(PRT_MESSAGE, "bot not on elevator\n");
#endif //DEBUG_ELEVATOR
		//if very near the reachability end
		FUNC11(reach->end, ms->origin, dir);
		dist = FUNC9(dir);
		if (dist < 64)
		{
			if (dist > 60) dist = 60;
			speed = 360 - (360 - 6 * dist);
			//
			if ((ms->moveflags & MFL_SWIMMING) || !FUNC0(ms, dir, 50))
			{
				if (speed > 5) FUNC5(ms->client, dir, speed);
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
		//if the elevator isn't down
		if (!FUNC7(reach))
		{
#ifdef DEBUG_ELEVATOR
			botimport.Print(PRT_MESSAGE, "elevator not down\n");
#endif //DEBUG_ELEVATOR
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
				if (speed > 5) FUNC5(ms->client, dir, speed);
			} //end if
			FUNC8(dir, result.movedir);
			//
			if (ms->moveflags & MFL_SWIMMING) result.flags |= MOVERESULT_SWIMVIEW;
			//this isn't a failure... just wait till the elevator comes down
			result.type = RESULTTYPE_ELEVATORUP;
			result.flags |= MOVERESULT_WAITING;
			return result;
		} //end if
		//get direction and distance to elevator bottom center
		FUNC6(reach, bottomcenter);
		FUNC11(bottomcenter, ms->origin, dir2);
		if (!(ms->moveflags & MFL_SWIMMING)) dir2[2] = 0;
		dist2 = FUNC10(dir2);
		//if very close to the reachability start or
		//closer to the elevator center or
		//between reachability start and elevator center
		if (dist1 < 20 || dist2 < dist1 || FUNC4(dir1, dir2) < 0)
		{
#ifdef DEBUG_ELEVATOR
			botimport.Print(PRT_MESSAGE, "bot moving to center\n");
#endif //DEBUG_ELEVATOR
			dist = dist2;
			FUNC8(dir2, dir);
		} //end if
		else //closer to the reachability start
		{
#ifdef DEBUG_ELEVATOR
			botimport.Print(PRT_MESSAGE, "bot moving to start\n");
#endif //DEBUG_ELEVATOR
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
			FUNC5(ms->client, dir, speed);
		} //end if
		FUNC8(dir, result.movedir);
		//
		if (ms->moveflags & MFL_SWIMMING) result.flags |= MOVERESULT_SWIMVIEW;
	} //end else
	return result;
}