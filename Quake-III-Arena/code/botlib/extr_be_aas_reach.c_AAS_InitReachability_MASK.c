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
typedef  int /*<<< orphan*/  aas_lreachability_t ;
struct TYPE_2__ {int numreachabilityareas; int numareas; int /*<<< orphan*/  savefile; scalar_t__ reachabilitysize; int /*<<< orphan*/  loaded; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (char*) ; 
 TYPE_1__ aasworld ; 
 int /*<<< orphan*/ ** areareachability ; 
 scalar_t__ calcgrapplereach ; 
 int /*<<< orphan*/  qtrue ; 

void FUNC4(void)
{
	if (!aasworld.loaded) return;

	if (aasworld.reachabilitysize)
	{
#ifndef BSPC
		if (!((int)FUNC3("forcereachability")))
		{
			aasworld.numreachabilityareas = aasworld.numareas + 2;
			return;
		} //end if
#else
		aasworld.numreachabilityareas = aasworld.numareas + 2;
		return;
#endif //BSPC
	} //end if
#ifndef BSPC
	calcgrapplereach = FUNC3("grapplereach");
#endif
	aasworld.savefile = qtrue;
	//start with area 1 because area zero is a dummy
	aasworld.numreachabilityareas = 1;
	////aasworld.numreachabilityareas = aasworld.numareas + 1;		//only calculate entity reachabilities
	//setup the heap with reachability links
	FUNC1();
	//allocate area reachability link array
	areareachability = (aas_lreachability_t **) FUNC2(
									aasworld.numareas * sizeof(aas_lreachability_t *));
	//
	FUNC0();
}