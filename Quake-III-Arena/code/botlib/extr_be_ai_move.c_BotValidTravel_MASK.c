#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_3__ {int /*<<< orphan*/  areanum; int /*<<< orphan*/  traveltype; } ;
typedef  TYPE_1__ aas_reachability_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int qfalse ; 
 int qtrue ; 

int FUNC2(vec3_t origin, aas_reachability_t *reach, int travelflags)
{
	//if the reachability uses an unwanted travel type
	if (FUNC1(reach->traveltype) & ~travelflags) return qfalse;
	//don't go into areas with bad travel types
	if (FUNC0(reach->areanum) & ~travelflags) return qfalse;
	return qtrue;
}