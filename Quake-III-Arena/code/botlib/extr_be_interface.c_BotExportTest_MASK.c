#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_9__ ;
typedef  struct TYPE_25__   TYPE_8__ ;
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_10__ ;

/* Type definitions */
typedef  double* vec3_t ;
struct TYPE_20__ {int areanum; double* origin; } ;
typedef  TYPE_3__ bot_goal_t ;
struct TYPE_21__ {double* end; int areanum; } ;
typedef  TYPE_4__ aas_reachability_t ;
struct TYPE_26__ {int (* DebugLineCreate ) () ;int /*<<< orphan*/  (* DebugLineShow ) (int,double*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* Print ) (int /*<<< orphan*/ ,char*,double,double,double,int) ;} ;
struct TYPE_25__ {int goalareanum; double* goalorigin; } ;
struct TYPE_18__ {int /*<<< orphan*/  type; scalar_t__ dist; int /*<<< orphan*/  normal; } ;
struct TYPE_24__ {double fraction; int ent; TYPE_1__ plane; int /*<<< orphan*/  endpos; scalar_t__ exp_dist; } ;
struct TYPE_23__ {int /*<<< orphan*/  maxs; int /*<<< orphan*/  mins; int /*<<< orphan*/  origin; } ;
struct TYPE_22__ {int ent; } ;
struct TYPE_19__ {int contents; } ;
struct TYPE_17__ {TYPE_6__* entities; scalar_t__ faces; TYPE_2__* areasettings; int /*<<< orphan*/  loaded; } ;

/* Variables and functions */
 double FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,double*,int,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (double*) ; 
 double FUNC6 (double*) ; 
 int /*<<< orphan*/  FUNC7 (int,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 TYPE_7__ FUNC13 (double*,double*,double*,double*,int,int /*<<< orphan*/ ) ; 
 TYPE_7__ FUNC14 (double*,double*,double*,double*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (TYPE_5__*) ; 
 int AREACONTENTS_CLUSTERPORTAL ; 
 int AREACONTENTS_DONOTENTER ; 
 int AREACONTENTS_JUMPPAD ; 
 int AREACONTENTS_LAVA ; 
 int AREACONTENTS_MOVER ; 
 int AREACONTENTS_SLIME ; 
 int AREACONTENTS_VIEWPORTAL ; 
 int AREACONTENTS_WATER ; 
 int /*<<< orphan*/  FUNC16 (double*,double*,double*,int /*<<< orphan*/ *) ; 
 int FUNC17 (double*) ; 
 int FUNC18 (double*,int,int,int,int*,float*,int*,TYPE_3__*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  LINECOLOR_BLUE ; 
 int /*<<< orphan*/  LINECOLOR_GREEN ; 
 int /*<<< orphan*/  LINECOLOR_RED ; 
 int /*<<< orphan*/  LINECOLOR_YELLOW ; 
 int FUNC19 (char*) ; 
 int /*<<< orphan*/  MASK_PLAYERSOLID ; 
 int MAX_AVOIDREACH ; 
 int /*<<< orphan*/  PRT_MESSAGE ; 
 int TFL_DEFAULT ; 
 int TFL_FUNCBOB ; 
 int TFL_ROCKETJUMP ; 
 int /*<<< orphan*/  FUNC20 (double*) ; 
 int /*<<< orphan*/  FUNC21 (double*,double*) ; 
 int /*<<< orphan*/  FUNC22 (double*,int,double*,double*) ; 
 TYPE_10__ aasworld ; 
 TYPE_9__ botimport ; 
 TYPE_8__ botlibglobals ; 
 TYPE_7__ bsptrace ; 
 TYPE_6__* ent ; 
 scalar_t__ face ; 
 int FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ,char*,double,double,double,int) ; 
 int FUNC32 () ; 
 int /*<<< orphan*/  FUNC33 (int,double*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 (int,double*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ ,char*,double,double,double) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ ,char*,int,double,double) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC40 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ ,char*) ; 
 TYPE_5__ trace ; 

int FUNC43(int parm0, char *parm1, vec3_t parm2, vec3_t parm3)
{

//	return AAS_PointLight(parm2, NULL, NULL, NULL);

#ifdef DEBUG
	static int area = -1;
	static int line[2];
	int newarea, i, highlightarea, flood;
//	int reachnum;
	vec3_t eye, forward, right, end, origin;
//	vec3_t bottomcenter;
//	aas_trace_t trace;
//	aas_face_t *face;
//	aas_entity_t *ent;
//	bsp_trace_t bsptrace;
//	aas_reachability_t reach;
//	bot_goal_t goal;

	// clock_t start_time, end_time;
	vec3_t mins = {-16, -16, -24};
	vec3_t maxs = {16, 16, 32};

//	int areas[10], numareas;


	//return 0;

	if (!aasworld.loaded) return 0;

	/*
	if (parm0 & 1)
	{
		AAS_ClearShownPolygons();
		AAS_FloodAreas(parm2);
	} //end if
	return 0;
	*/
	for (i = 0; i < 2; i++) if (!line[i]) line[i] = botimport.DebugLineCreate();

//	AAS_ClearShownDebugLines();

	//if (AAS_AgainstLadder(parm2)) botimport.Print(PRT_MESSAGE, "against ladder\n");
	//BotOnGround(parm2, PRESENCE_NORMAL, 1, &newarea, &newarea);
	//botimport.Print(PRT_MESSAGE, "%f %f %f\n", parm2[0], parm2[1], parm2[2]);
	//*
	highlightarea = LibVarGetValue("bot_highlightarea");
	if (highlightarea > 0)
	{
		newarea = highlightarea;
	} //end if
	else
	{
		VectorCopy(parm2, origin);
		origin[2] += 0.5;
		//newarea = AAS_PointAreaNum(origin);
		newarea = BotFuzzyPointReachabilityArea(origin);
	} //end else

	botimport.Print(PRT_MESSAGE, "\rtravel time to goal (%d) = %d  ", botlibglobals.goalareanum,
		AAS_AreaTravelTimeToGoalArea(newarea, origin, botlibglobals.goalareanum, TFL_DEFAULT));
	//newarea = BotReachabilityArea(origin, qtrue);
	if (newarea != area)
	{
		botimport.Print(PRT_MESSAGE, "origin = %f, %f, %f\n", origin[0], origin[1], origin[2]);
		area = newarea;
		botimport.Print(PRT_MESSAGE, "new area %d, cluster %d, presence type %d\n",
					area, AAS_AreaCluster(area), AAS_PointPresenceType(origin));
		botimport.Print(PRT_MESSAGE, "area contents: ");
		if (aasworld.areasettings[area].contents & AREACONTENTS_WATER)
		{
			botimport.Print(PRT_MESSAGE, "water &");
		} //end if
		if (aasworld.areasettings[area].contents & AREACONTENTS_LAVA)
		{
			botimport.Print(PRT_MESSAGE, "lava &");
		} //end if
		if (aasworld.areasettings[area].contents & AREACONTENTS_SLIME)
		{
			botimport.Print(PRT_MESSAGE, "slime &");
		} //end if
		if (aasworld.areasettings[area].contents & AREACONTENTS_JUMPPAD)
		{
			botimport.Print(PRT_MESSAGE, "jump pad &");
		} //end if
		if (aasworld.areasettings[area].contents & AREACONTENTS_CLUSTERPORTAL)
		{
			botimport.Print(PRT_MESSAGE, "cluster portal &");
		} //end if
		if (aasworld.areasettings[area].contents & AREACONTENTS_VIEWPORTAL)
		{
			botimport.Print(PRT_MESSAGE, "view portal &");
		} //end if
		if (aasworld.areasettings[area].contents & AREACONTENTS_DONOTENTER)
		{
			botimport.Print(PRT_MESSAGE, "do not enter &");
		} //end if
		if (aasworld.areasettings[area].contents & AREACONTENTS_MOVER)
		{
			botimport.Print(PRT_MESSAGE, "mover &");
		} //end if
		if (!aasworld.areasettings[area].contents)
		{
			botimport.Print(PRT_MESSAGE, "empty");
		} //end if
		botimport.Print(PRT_MESSAGE, "\n");
		botimport.Print(PRT_MESSAGE, "travel time to goal (%d) = %d\n", botlibglobals.goalareanum,
					AAS_AreaTravelTimeToGoalArea(newarea, origin, botlibglobals.goalareanum, TFL_DEFAULT|TFL_ROCKETJUMP));
		/*
		VectorCopy(origin, end);
		end[2] += 5;
		numareas = AAS_TraceAreas(origin, end, areas, NULL, 10);
		AAS_TraceClientBBox(origin, end, PRESENCE_CROUCH, -1);
		botimport.Print(PRT_MESSAGE, "num areas = %d, area = %d\n", numareas, areas[0]);
		*/
		/*
		botlibglobals.goalareanum = newarea;
		VectorCopy(parm2, botlibglobals.goalorigin);
		botimport.Print(PRT_MESSAGE, "new goal %2.1f %2.1f %2.1f area %d\n",
								origin[0], origin[1], origin[2], newarea);
		*/
	} //end if
	//*
	flood = LibVarGetValue("bot_flood");
	if (parm0 & 1)
	{
		if (flood)
		{
			AAS_ClearShownPolygons();
			AAS_ClearShownDebugLines();
			AAS_FloodAreas(parm2);
		}
		else
		{
			botlibglobals.goalareanum = newarea;
			VectorCopy(parm2, botlibglobals.goalorigin);
			botimport.Print(PRT_MESSAGE, "new goal %2.1f %2.1f %2.1f area %d\n",
									origin[0], origin[1], origin[2], newarea);
		}
	} //end if*/
	if (flood)
		return 0;
//	if (parm0 & BUTTON_USE)
//	{
//		botlibglobals.runai = !botlibglobals.runai;
//		if (botlibglobals.runai) botimport.Print(PRT_MESSAGE, "started AI\n");
//		else botimport.Print(PRT_MESSAGE, "stopped AI\n");
		//* /
		/*
		goal.areanum = botlibglobals.goalareanum;
		reachnum = BotGetReachabilityToGoal(parm2, newarea, 1,
										ms.avoidreach, ms.avoidreachtimes,
										&goal, TFL_DEFAULT);
		if (!reachnum)
		{
			botimport.Print(PRT_MESSAGE, "goal not reachable\n");
		} //end if
		else
		{
			AAS_ReachabilityFromNum(reachnum, &reach);
			AAS_ClearShownDebugLines();
			AAS_ShowArea(area, qtrue);
			AAS_ShowArea(reach.areanum, qtrue);
			AAS_DrawCross(reach.start, 6, LINECOLOR_BLUE);
			AAS_DrawCross(reach.end, 6, LINECOLOR_RED);
			//
			if ((reach.traveltype & TRAVELTYPE_MASK) == TRAVEL_ELEVATOR)
			{
				ElevatorBottomCenter(&reach, bottomcenter);
				AAS_DrawCross(bottomcenter, 10, LINECOLOR_GREEN);
			} //end if
		} //end else*/
//		botimport.Print(PRT_MESSAGE, "travel time to goal = %d\n",
//					AAS_AreaTravelTimeToGoalArea(area, origin, botlibglobals.goalareanum, TFL_DEFAULT));
//		botimport.Print(PRT_MESSAGE, "test rj from 703 to 716\n");
//		AAS_Reachability_WeaponJump(703, 716);
//	} //end if*/

/*	face = AAS_AreaGroundFace(newarea, parm2);
	if (face)
	{
		AAS_ShowFace(face - aasworld.faces);
	} //end if*/
	/*
	AAS_ClearShownDebugLines();
	AAS_ShowArea(newarea, parm0 & BUTTON_USE);
	AAS_ShowReachableAreas(area);
	*/
	AAS_ClearShownPolygons();
	AAS_ClearShownDebugLines();
	AAS_ShowAreaPolygons(newarea, 1, parm0 & 4);
	if (parm0 & 2) AAS_ShowReachableAreas(area);
	else
	{
		static int lastgoalareanum, lastareanum;
		static int avoidreach[MAX_AVOIDREACH];
		static float avoidreachtimes[MAX_AVOIDREACH];
		static int avoidreachtries[MAX_AVOIDREACH];
		int reachnum, resultFlags;
		bot_goal_t goal;
		aas_reachability_t reach;

		/*
		goal.areanum = botlibglobals.goalareanum;
		VectorCopy(botlibglobals.goalorigin, goal.origin);
		reachnum = BotGetReachabilityToGoal(origin, newarea,
									  lastgoalareanum, lastareanum,
									  avoidreach, avoidreachtimes, avoidreachtries,
									  &goal, TFL_DEFAULT|TFL_FUNCBOB|TFL_ROCKETJUMP, TFL_DEFAULT|TFL_FUNCBOB|TFL_ROCKETJUMP,
									  NULL, 0, &resultFlags);
		AAS_ReachabilityFromNum(reachnum, &reach);
		AAS_ShowReachability(&reach);
		*/
		int curarea;
		vec3_t curorigin;

		goal.areanum = botlibglobals.goalareanum;
		VectorCopy(botlibglobals.goalorigin, goal.origin);
		VectorCopy(origin, curorigin);
		curarea = newarea;
		for ( i = 0; i < 100; i++ ) {
			if ( curarea == goal.areanum ) {
				break;
			}
			reachnum = BotGetReachabilityToGoal(curorigin, curarea,
										  lastgoalareanum, lastareanum,
										  avoidreach, avoidreachtimes, avoidreachtries,
										  &goal, TFL_DEFAULT|TFL_FUNCBOB|TFL_ROCKETJUMP, TFL_DEFAULT|TFL_FUNCBOB|TFL_ROCKETJUMP,
										  NULL, 0, &resultFlags);
			AAS_ReachabilityFromNum(reachnum, &reach);
			AAS_ShowReachability(&reach);
			VectorCopy(reach.end, origin);
			lastareanum = curarea;
			curarea = reach.areanum;
		}
	} //end else
	VectorClear(forward);
	//BotGapDistance(origin, forward, 0);
	/*
	if (parm0 & BUTTON_USE)
	{
		botimport.Print(PRT_MESSAGE, "test rj from 703 to 716\n");
		AAS_Reachability_WeaponJump(703, 716);
	} //end if*/

	AngleVectors(parm3, forward, right, NULL);
	//get the eye 16 units to the right of the origin
	VectorMA(parm2, 8, right, eye);
	//get the eye 24 units up
	eye[2] += 24;
	//get the end point for the line to be traced
	VectorMA(eye, 800, forward, end);

//	AAS_TestMovementPrediction(1, parm2, forward);
/*
    //trace the line to find the hit point
	trace = AAS_TraceClientBBox(eye, end, PRESENCE_NORMAL, 1);
	if (!line[0]) line[0] = botimport.DebugLineCreate();
	botimport.DebugLineShow(line[0], eye, trace.endpos, LINECOLOR_BLUE);
	//
	AAS_ClearShownDebugLines();
	if (trace.ent)
	{
		ent = &aasworld.entities[trace.ent];
		AAS_ShowBoundingBox(ent->origin, ent->mins, ent->maxs);
	} //end if
*/

/*
	start_time = clock();
	for (i = 0; i < 2000; i++)
	{
		AAS_Trace2(eye, mins, maxs, end, 1, MASK_PLAYERSOLID);
//		AAS_TraceClientBBox(eye, end, PRESENCE_NORMAL, 1);
	} //end for
	end_time = clock();
	botimport.Print(PRT_MESSAGE, "me %lu clocks, %lu CLOCKS_PER_SEC\n", end_time - start_time, CLOCKS_PER_SEC);
	start_time = clock();
	for (i = 0; i < 2000; i++)
	{
		AAS_Trace(eye, mins, maxs, end, 1, MASK_PLAYERSOLID);
	} //end for
	end_time = clock();
	botimport.Print(PRT_MESSAGE, "id %lu clocks, %lu CLOCKS_PER_SEC\n", end_time - start_time, CLOCKS_PER_SEC);
*/

    // TTimo: nested comments are BAD for gcc -Werror, use #if 0 instead..
#if 0
	AAS_ClearShownDebugLines();
	//bsptrace = AAS_Trace(eye, NULL, NULL, end, 1, MASK_PLAYERSOLID);
	bsptrace = AAS_Trace(eye, mins, maxs, end, 1, MASK_PLAYERSOLID);
	if (!line[0]) line[0] = botimport.DebugLineCreate();
	botimport.DebugLineShow(line[0], eye, bsptrace.endpos, LINECOLOR_YELLOW);
	if (bsptrace.fraction < 1.0)
	{
		face = AAS_TraceEndFace(&trace);
		if (face)
		{
			AAS_ShowFace(face - aasworld.faces);
		} //end if
		
		AAS_DrawPlaneCross(bsptrace.endpos,
									bsptrace.plane.normal,
									bsptrace.plane.dist + bsptrace.exp_dist,
									bsptrace.plane.type, LINECOLOR_GREEN);
		if (trace.ent)
		{
			ent = &aasworld.entities[trace.ent];
			AAS_ShowBoundingBox(ent->origin, ent->mins, ent->maxs);
		} //end if
	} //end if
	//bsptrace = AAS_Trace2(eye, NULL, NULL, end, 1, MASK_PLAYERSOLID);
	bsptrace = AAS_Trace2(eye, mins, maxs, end, 1, MASK_PLAYERSOLID);
	botimport.DebugLineShow(line[1], eye, bsptrace.endpos, LINECOLOR_BLUE);
	if (bsptrace.fraction < 1.0)
	{
		AAS_DrawPlaneCross(bsptrace.endpos,
									bsptrace.plane.normal,
									bsptrace.plane.dist,// + bsptrace.exp_dist,
									bsptrace.plane.type, LINECOLOR_RED);
		if (bsptrace.ent)
		{
			ent = &aasworld.entities[bsptrace.ent];
			AAS_ShowBoundingBox(ent->origin, ent->mins, ent->maxs);
		} //end if
	} //end if
#endif
#endif
	return 0;
}