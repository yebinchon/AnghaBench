#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * vec3_t ;
struct TYPE_6__ {int /*<<< orphan*/  client; int /*<<< orphan*/  origin; } ;
typedef  TYPE_1__ bot_movestate_t ;
typedef  int /*<<< orphan*/  bot_moveresult_t ;
struct TYPE_7__ {int /*<<< orphan*/ * end; } ;
typedef  TYPE_2__ aas_reachability_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

bot_moveresult_t FUNC6(bot_movestate_t *ms, aas_reachability_t *reach)
{
	vec3_t bottomcenter, bottomdir, topdir;
	bot_moveresult_t result;

	FUNC0(&result);
	//
	FUNC2(reach, bottomcenter);
	FUNC4(bottomcenter, ms->origin, bottomdir);
	//
	FUNC4(reach->end, ms->origin, topdir);
	//
	if (FUNC5(bottomdir[2]) < FUNC5(topdir[2]))
	{
		FUNC3(bottomdir);
		FUNC1(ms->client, bottomdir, 300);
	} //end if
	else
	{
		FUNC3(topdir);
		FUNC1(ms->client, topdir, 300);
	} //end else
	return result;
}