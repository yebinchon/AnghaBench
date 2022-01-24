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
struct TYPE_8__ {int moveflags; int* origin; int /*<<< orphan*/  client; } ;
typedef  TYPE_1__ bot_movestate_t ;
struct TYPE_9__ {int* movedir; int /*<<< orphan*/  flags; int /*<<< orphan*/  ideal_viewangles; } ;
typedef  TYPE_2__ bot_moveresult_t ;
struct TYPE_10__ {int /*<<< orphan*/  end; } ;
typedef  TYPE_3__ aas_reachability_t ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int CONTENTS_LAVA ; 
 int CONTENTS_SLIME ; 
 int CONTENTS_WATER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*,int) ; 
 int MFL_WATERJUMP ; 
 int /*<<< orphan*/  MOVERESULT_MOVEMENTVIEW ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*) ; 
 float FUNC5 (int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int*,int*) ; 
 int FUNC7 () ; 

bot_moveresult_t FUNC8(bot_movestate_t *ms, aas_reachability_t *reach)
{
	vec3_t dir, pnt;
	float dist;
	bot_moveresult_t result;

	//botimport.Print(PRT_MESSAGE, "BotFinishTravel_WaterJump\n");
	FUNC1(&result);
	//if waterjumping there's nothing to do
	if (ms->moveflags & MFL_WATERJUMP) return result;
	//if not touching any water anymore don't do anything
	//otherwise the bot sometimes keeps jumping?
	FUNC4(ms->origin, pnt);
	pnt[2] -= 32;	//extra for q2dm4 near red armor/mega health
	if (!(FUNC0(pnt) & (CONTENTS_LAVA|CONTENTS_SLIME|CONTENTS_WATER))) return result;
	//swim straight to reachability end
	FUNC6(reach->end, ms->origin, dir);
	dir[0] += FUNC7() * 10;
	dir[1] += FUNC7() * 10;
	dir[2] += 70 + FUNC7() * 10;
	dist = FUNC5(dir);
	//elemantary actions
	FUNC2(ms->client, dir, 400);
	//set the ideal view angles
	FUNC3(dir, result.ideal_viewangles);
	result.flags |= MOVERESULT_MOVEMENTVIEW;
	//
	FUNC4(dir, result.movedir);
	//
	return result;
}