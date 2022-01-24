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
struct TYPE_2__ {int* portalmaxtraveltimes; int numportals; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 scalar_t__ FUNC2 (int) ; 
 TYPE_1__ aasworld ; 

void FUNC3(void)
{
	int i;

	if (aasworld.portalmaxtraveltimes) FUNC1(aasworld.portalmaxtraveltimes);

	aasworld.portalmaxtraveltimes = (int *) FUNC2(aasworld.numportals * sizeof(int));

	for (i = 0; i < aasworld.numportals; i++)
	{
		aasworld.portalmaxtraveltimes[i] = FUNC0(i);
		//botimport.Print(PRT_MESSAGE, "portal %d max tt = %d\n", i, aasworld.portalmaxtraveltimes[i]);
	} //end for
}