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
struct aas_reachability_s {int dummy; } ;
typedef  int /*<<< orphan*/  aas_reachability_t ;
struct TYPE_2__ {int reachabilitysize; int /*<<< orphan*/ * reachability; int /*<<< orphan*/  initialized; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aas_reachability_s*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct aas_reachability_s*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__ aasworld ; 

void FUNC2(int num, struct aas_reachability_s *reach)
{
	if (!aasworld.initialized)
	{
		FUNC1(reach, 0, sizeof(aas_reachability_t));
		return;
	} //end if
	if (num < 0 || num >= aasworld.reachabilitysize)
	{
		FUNC1(reach, 0, sizeof(aas_reachability_t));
		return;
	} //end if
	FUNC0(reach, &aasworld.reachability[num], sizeof(aas_reachability_t));;
}