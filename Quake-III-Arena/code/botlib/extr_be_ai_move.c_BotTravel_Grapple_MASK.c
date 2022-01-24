#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_9__ ;
typedef  struct TYPE_26__   TYPE_8__ ;
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__* vec3_t ;
struct TYPE_19__ {scalar_t__* endpos; } ;
typedef  TYPE_1__ bsp_trace_t ;
struct TYPE_20__ {int moveflags; float lastgrappledist; double grapplevisible_time; int reachareanum; scalar_t__ reachability_time; scalar_t__* origin; int /*<<< orphan*/  client; int /*<<< orphan*/  entitynum; int /*<<< orphan*/  viewoffset; int /*<<< orphan*/ * viewangles; } ;
typedef  TYPE_2__ bot_movestate_t ;
struct TYPE_21__ {int /*<<< orphan*/  movedir; int /*<<< orphan*/  failure; int /*<<< orphan*/ * ideal_viewangles; int /*<<< orphan*/  flags; int /*<<< orphan*/  weapon; } ;
typedef  TYPE_3__ bot_moveresult_t ;
struct TYPE_22__ {int /*<<< orphan*/  end; int /*<<< orphan*/  start; } ;
typedef  TYPE_4__ aas_reachability_t ;
struct TYPE_27__ {int (* DebugLineCreate ) () ;int /*<<< orphan*/  (* Print ) (int /*<<< orphan*/ ,char*) ;int /*<<< orphan*/  (* DebugLineShow ) (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_26__ {int /*<<< orphan*/  string; } ;
struct TYPE_25__ {int /*<<< orphan*/  string; } ;
struct TYPE_24__ {scalar_t__ value; } ;
struct TYPE_23__ {int /*<<< orphan*/  value; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 double FUNC1 () ; 
 TYPE_1__ FUNC2 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,scalar_t__*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  CONTENTS_SOLID ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__*,float) ; 
 int FUNC9 (TYPE_2__*,TYPE_4__*) ; 
 int /*<<< orphan*/  LINECOLOR_BLUE ; 
 int MFL_ACTIVEGRAPPLE ; 
 int MFL_GRAPPLERESET ; 
 int MFL_SWIMMING ; 
 int /*<<< orphan*/  MOVERESULT_MOVEMENTVIEW ; 
 int /*<<< orphan*/  MOVERESULT_MOVEMENTWEAPON ; 
 int /*<<< orphan*/  PRT_ERROR ; 
 int /*<<< orphan*/  PRT_MESSAGE ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int FUNC13 (scalar_t__*) ; 
 float FUNC14 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 
 TYPE_9__ botimport ; 
 TYPE_8__* cmd_grappleoff ; 
 TYPE_7__* cmd_grappleon ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 TYPE_6__* offhandgrapple ; 
 int /*<<< orphan*/  qtrue ; 
 int FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,char*) ; 
 TYPE_5__* weapindex_grapple ; 

bot_moveresult_t FUNC24(bot_movestate_t *ms, aas_reachability_t *reach)
{
	bot_moveresult_t result;
	float dist, speed;
	vec3_t dir, viewdir, org;
	int state, areanum;
	bsp_trace_t trace;

#ifdef DEBUG_GRAPPLE
	static int debugline;
	if (!debugline) debugline = botimport.DebugLineCreate();
	botimport.DebugLineShow(debugline, reach->start, reach->end, LINECOLOR_BLUE);
#endif //DEBUG_GRAPPLE

	FUNC5(&result);
	//
	if (ms->moveflags & MFL_GRAPPLERESET)
	{
		if (offhandgrapple->value)
			FUNC7(ms->client, cmd_grappleoff->string);
		ms->moveflags &= ~MFL_ACTIVEGRAPPLE;
		return result;
	} //end if
	//
	if (!(int) offhandgrapple->value)
	{
		result.weapon = weapindex_grapple->value;
		result.flags |= MOVERESULT_MOVEMENTWEAPON;
	} //end if
	//
	if (ms->moveflags & MFL_ACTIVEGRAPPLE)
	{
#ifdef DEBUG_GRAPPLE
		botimport.Print(PRT_MESSAGE, "BotTravel_Grapple: active grapple\n");
#endif //DEBUG_GRAPPLE
		//
		state = FUNC9(ms, reach);
		//
		FUNC15(reach->end, ms->origin, dir);
		dir[2] = 0;
		dist = FUNC13(dir);
		//if very close to the grapple end or the grappled is hooked and
		//the bot doesn't get any closer
		if (state && dist < 48)
		{
			if (ms->lastgrappledist - dist < 1)
			{
#ifdef DEBUG_GRAPPLE
				botimport.Print(PRT_ERROR, "grapple normal end\n");
#endif //DEBUG_GRAPPLE
				if (offhandgrapple->value)
					FUNC7(ms->client, cmd_grappleoff->string);
				ms->moveflags &= ~MFL_ACTIVEGRAPPLE;
				ms->moveflags |= MFL_GRAPPLERESET;
				ms->reachability_time = 0;	//end the reachability
				return result;
			} //end if
		} //end if
		//if no valid grapple at all, or the grapple hooked and the bot
		//isn't moving anymore
		else if (!state || (state == 2 && dist > ms->lastgrappledist - 2))
		{
			if (ms->grapplevisible_time < FUNC1() - 0.4)
			{
#ifdef DEBUG_GRAPPLE
				botimport.Print(PRT_ERROR, "grapple not visible\n");
#endif //DEBUG_GRAPPLE
				if (offhandgrapple->value)
					FUNC7(ms->client, cmd_grappleoff->string);
				ms->moveflags &= ~MFL_ACTIVEGRAPPLE;
				ms->moveflags |= MFL_GRAPPLERESET;
				ms->reachability_time = 0;	//end the reachability
				return result;
			} //end if
		} //end if
		else
		{
			ms->grapplevisible_time = FUNC1();
		} //end else
		//
		if (!(int) offhandgrapple->value)
		{
			FUNC6(ms->client);
		} //end if
		//remember the current grapple distance
		ms->lastgrappledist = dist;
	} //end if
	else
	{
#ifdef DEBUG_GRAPPLE
		botimport.Print(PRT_MESSAGE, "BotTravel_Grapple: inactive grapple\n");
#endif //DEBUG_GRAPPLE
		//
		ms->grapplevisible_time = FUNC1();
		//
		FUNC15(reach->start, ms->origin, dir);
		if (!(ms->moveflags & MFL_SWIMMING)) dir[2] = 0;
		FUNC11(ms->origin, ms->viewoffset, org);
		FUNC15(reach->end, org, viewdir);
		//
		dist = FUNC14(dir);
		FUNC10(viewdir, result.ideal_viewangles);
		result.flags |= MOVERESULT_MOVEMENTVIEW;
		//
		if (dist < 5 &&
			FUNC16(FUNC3(result.ideal_viewangles[0], ms->viewangles[0])) < 2 &&
			FUNC16(FUNC3(result.ideal_viewangles[1], ms->viewangles[1])) < 2)
		{
#ifdef DEBUG_GRAPPLE
			botimport.Print(PRT_MESSAGE, "BotTravel_Grapple: activating grapple\n");
#endif //DEBUG_GRAPPLE
			//check if the grapple missile path is clear
			FUNC11(ms->origin, ms->viewoffset, org);
			trace = FUNC2(org, NULL, NULL, reach->end, ms->entitynum, CONTENTS_SOLID);
			FUNC15(reach->end, trace.endpos, dir);
			if (FUNC13(dir) > 16)
			{
				result.failure = qtrue;
				return result;
			} //end if
			//activate the grapple
			if (offhandgrapple->value)
			{
				FUNC7(ms->client, cmd_grappleon->string);
			} //end if
			else
			{
				FUNC6(ms->client);
			} //end else
			ms->moveflags |= MFL_ACTIVEGRAPPLE;
			ms->lastgrappledist = 999999;
		} //end if
		else
		{
			if (dist < 70) speed = 300 - (300 - 4 * dist);
			else speed = 400;
			//
			FUNC4(ms, dir, qtrue, &result);
			//elemantary action move in direction
			FUNC8(ms->client, dir, speed);
			FUNC12(dir, result.movedir);
		} //end else
		//if in another area before actually grappling
		areanum = FUNC0(ms->origin);
		if (areanum && areanum != ms->reachareanum) ms->reachability_time = 0;
	} //end else
	return result;
}