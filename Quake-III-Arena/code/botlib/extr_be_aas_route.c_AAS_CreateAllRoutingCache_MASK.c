#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int numareas; int /*<<< orphan*/  initialized; TYPE_1__* areas; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* Print ) (int /*<<< orphan*/ ,char*) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  center; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PRT_MESSAGE ; 
 int /*<<< orphan*/  TFL_DEFAULT ; 
 TYPE_3__ aasworld ; 
 TYPE_2__ botimport ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

void FUNC3(void)
{
	int i, j, t;

	aasworld.initialized = qtrue;
	botimport.Print(PRT_MESSAGE, "AAS_CreateAllRoutingCache\n");
	for (i = 1; i < aasworld.numareas; i++)
	{
		if (!FUNC0(i)) continue;
		for (j = 1; j < aasworld.numareas; j++)
		{
			if (i == j) continue;
			if (!FUNC0(j)) continue;
			t = FUNC1(i, aasworld.areas[i].center, j, TFL_DEFAULT);
			//Log_Write("traveltime from %d to %d is %d", i, j, t);
		} //end for
	} //end for
	aasworld.initialized = qfalse;
}