#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ modelnum; } ;
typedef  TYPE_1__ entity_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__* brushmodelnumbers ; 
 int /*<<< orphan*/ * sin_dbrushes ; 
 int sin_numbrushes ; 

void FUNC2(entity_t *mapent)
{
	int i, testnum = 0;

	//give all the brushes that belong to this entity the number of the
	//BSP model used by this entity
	FUNC1(mapent);
	//now parse all the brushes with the correct mapent->modelnum
	for (i = 0; i < sin_numbrushes; i++)
	{
		if (brushmodelnumbers[i] == mapent->modelnum)
		{
			testnum++;
			FUNC0(&sin_dbrushes[i], mapent);
		} //end if
	} //end for
}