#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * areacontentstravelflags; int /*<<< orphan*/ * reachabilityareaindex; int /*<<< orphan*/ * reachabilityareas; int /*<<< orphan*/ * portalupdate; int /*<<< orphan*/ * areaupdate; int /*<<< orphan*/ * reversedreachability; int /*<<< orphan*/ * portalmaxtraveltimes; int /*<<< orphan*/ * areatraveltimes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__ aasworld ; 

void FUNC3(void)
{
	// free all the existing cluster area cache
	FUNC0();
	// free all the existing portal cache
	FUNC1();
	// free cached travel times within areas
	if (aasworld.areatraveltimes) FUNC2(aasworld.areatraveltimes);
	aasworld.areatraveltimes = NULL;
	// free cached maximum travel time through cluster portals
	if (aasworld.portalmaxtraveltimes) FUNC2(aasworld.portalmaxtraveltimes);
	aasworld.portalmaxtraveltimes = NULL;
	// free reversed reachability links
	if (aasworld.reversedreachability) FUNC2(aasworld.reversedreachability);
	aasworld.reversedreachability = NULL;
	// free routing algorithm memory
	if (aasworld.areaupdate) FUNC2(aasworld.areaupdate);
	aasworld.areaupdate = NULL;
	if (aasworld.portalupdate) FUNC2(aasworld.portalupdate);
	aasworld.portalupdate = NULL;
	// free lists with areas the reachabilities go through
	if (aasworld.reachabilityareas) FUNC2(aasworld.reachabilityareas);
	aasworld.reachabilityareas = NULL;
	// free the reachability area index
	if (aasworld.reachabilityareaindex) FUNC2(aasworld.reachabilityareaindex);
	aasworld.reachabilityareaindex = NULL;
	// free area contents travel flags look up table
	if (aasworld.areacontentstravelflags) FUNC2(aasworld.areacontentstravelflags);
	aasworld.areacontentstravelflags = NULL;
}