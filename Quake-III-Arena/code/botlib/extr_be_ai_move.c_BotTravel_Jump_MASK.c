#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int* vec3_t ;
struct TYPE_9__ {scalar_t__ reachareanum; int* origin; int /*<<< orphan*/  client; int /*<<< orphan*/  lastreachnum; int /*<<< orphan*/  jumpreach; } ;
typedef  TYPE_1__ bot_movestate_t ;
struct TYPE_10__ {int* movedir; } ;
typedef  TYPE_2__ bot_moveresult_t ;
struct TYPE_11__ {int* start; int* end; } ;
typedef  TYPE_3__ aas_reachability_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int*) ; 
 scalar_t__ FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 double FUNC3 (int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int*,float) ; 
 int /*<<< orphan*/  FUNC7 (int*,int*) ; 
 int /*<<< orphan*/  FUNC8 (int*,float,int*,int*) ; 
 float FUNC9 (int*) ; 
 int /*<<< orphan*/  FUNC10 (int*,int*,int*) ; 

bot_moveresult_t FUNC11(bot_movestate_t *ms, aas_reachability_t *reach)
{
	vec3_t hordir, dir1, dir2, start, end, runstart;
//	vec3_t runstart, dir1, dir2, hordir;
	float dist1, dist2, speed;
	bot_moveresult_t result;

	FUNC2(&result);
	//
	FUNC0(reach, runstart);
	//*
	hordir[0] = runstart[0] - reach->start[0];
	hordir[1] = runstart[1] - reach->start[1];
	hordir[2] = 0;
	FUNC9(hordir);
	//
	FUNC7(reach->start, start);
	start[2] += 1;
	FUNC8(reach->start, 80, hordir, runstart);
	//check for a gap
	for (dist1 = 0; dist1 < 80; dist1 += 10)
	{
		FUNC8(start, dist1+10, hordir, end);
		end[2] += 1;
		if (FUNC1(end) != ms->reachareanum) break;
	} //end for
	if (dist1 < 80) FUNC8(reach->start, dist1, hordir, runstart);
	//
	FUNC10(ms->origin, reach->start, dir1);
	dir1[2] = 0;
	dist1 = FUNC9(dir1);
	FUNC10(ms->origin, runstart, dir2);
	dir2[2] = 0;
	dist2 = FUNC9(dir2);
	//if just before the reachability start
	if (FUNC3(dir1, dir2) < -0.8 || dist2 < 5)
	{
//		botimport.Print(PRT_MESSAGE, "between jump start and run start point\n");
		hordir[0] = reach->end[0] - ms->origin[0];
		hordir[1] = reach->end[1] - ms->origin[1];
		hordir[2] = 0;
		FUNC9(hordir);
		//elemantary action jump
		if (dist1 < 24) FUNC5(ms->client);
		else if (dist1 < 32) FUNC4(ms->client);
		FUNC6(ms->client, hordir, 600);
		//
		ms->jumpreach = ms->lastreachnum;
	} //end if
	else
	{
//		botimport.Print(PRT_MESSAGE, "going towards run start point\n");
		hordir[0] = runstart[0] - ms->origin[0];
		hordir[1] = runstart[1] - ms->origin[1];
		hordir[2] = 0;
		FUNC9(hordir);
		//
		if (dist2 > 80) dist2 = 80;
		speed = 400 - (400 - 5 * dist2);
		FUNC6(ms->client, hordir, speed);
	} //end else
	FUNC7(hordir, result.movedir);
	//
	return result;
}