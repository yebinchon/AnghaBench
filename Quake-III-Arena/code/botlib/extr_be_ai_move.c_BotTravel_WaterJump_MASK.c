#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int* vec3_t ;
struct TYPE_8__ {int /*<<< orphan*/  client; int /*<<< orphan*/  origin; } ;
typedef  TYPE_1__ bot_movestate_t ;
struct TYPE_9__ {int* movedir; int /*<<< orphan*/  flags; int /*<<< orphan*/  ideal_viewangles; } ;
typedef  TYPE_2__ bot_moveresult_t ;
struct TYPE_10__ {int /*<<< orphan*/  end; } ;
typedef  TYPE_3__ aas_reachability_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MOVERESULT_MOVEMENTVIEW ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*) ; 
 float FUNC5 (int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC7 () ; 

bot_moveresult_t FUNC8(bot_movestate_t *ms, aas_reachability_t *reach)
{
	vec3_t dir, hordir;
	float dist;
	bot_moveresult_t result;

	FUNC0(&result);
	//swim straight to reachability end
	FUNC6(reach->end, ms->origin, dir);
	FUNC4(dir, hordir);
	hordir[2] = 0;
	dir[2] += 15 + FUNC7() * 40;
	//botimport.Print(PRT_MESSAGE, "BotTravel_WaterJump: dir[2] = %f\n", dir[2]);
	FUNC5(dir);
	dist = FUNC5(hordir);
	//elemantary actions
	//EA_Move(ms->client, dir, 400);
	FUNC1(ms->client);
	//move up if close to the actual out of water jump spot
	if (dist < 40) FUNC2(ms->client);
	//set the ideal view angles
	FUNC3(dir, result.ideal_viewangles);
	result.flags |= MOVERESULT_MOVEMENTVIEW;
	//
	FUNC4(dir, result.movedir);
	//
	return result;
}