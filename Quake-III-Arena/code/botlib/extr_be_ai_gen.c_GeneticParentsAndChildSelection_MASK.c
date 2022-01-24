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
struct TYPE_2__ {int /*<<< orphan*/  (* Print ) (int /*<<< orphan*/ ,char*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float*,float*,int) ; 
 int FUNC1 (int,float*) ; 
 int /*<<< orphan*/  PRT_WARNING ; 
 TYPE_1__ botimport ; 
 int qfalse ; 
 int qtrue ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

int FUNC4(int numranks, float *ranks, int *parent1, int *parent2, int *child)
{
	float rankings[256], max;
	int i;

	if (numranks > 256)
	{
		botimport.Print(PRT_WARNING, "GeneticParentsAndChildSelection: too many bots\n");
		*parent1 = *parent2 = *child = 0;
		return qfalse;
	} //end if
	for (max = 0, i = 0; i < numranks; i++)
	{
		if (ranks[i] < 0) continue;
		max++;
	} //end for
	if (max < 3)
	{
		botimport.Print(PRT_WARNING, "GeneticParentsAndChildSelection: too few valid bots\n");
		*parent1 = *parent2 = *child = 0;
		return qfalse;
	} //end if
	FUNC0(rankings, ranks, sizeof(float) * numranks);
	//select first parent
	*parent1 = FUNC1(numranks, rankings);
	rankings[*parent1] = -1;
	//select second parent
	*parent2 = FUNC1(numranks, rankings);
	rankings[*parent2] = -1;
	//reverse the rankings
	max = 0;
	for (i = 0; i < numranks; i++)
	{
		if (rankings[i] < 0) continue;
		if (rankings[i] > max) max = rankings[i];
	} //end for
	for (i = 0; i < numranks; i++)
	{
		if (rankings[i] < 0) continue;
		rankings[i] = max - rankings[i];
	} //end for
	//select child
	*child = FUNC1(numranks, rankings);
	return qtrue;
}