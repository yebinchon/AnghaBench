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
typedef  int /*<<< orphan*/ * vec3_t ;
struct TYPE_4__ {int modelindex; int /*<<< orphan*/  origin; } ;
struct TYPE_5__ {TYPE_1__ i; } ;
typedef  TYPE_2__ aas_entity_t ;
struct TYPE_6__ {int maxentities; TYPE_2__* entities; } ;

/* Variables and functions */
 float FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__ aasworld ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(vec3_t origin, int modelindex)
{
	int i, bestentnum;
	float dist, bestdist;
	aas_entity_t *ent;
	vec3_t dir;

	bestentnum = 0;
	bestdist = 99999;
	for (i = 0; i < aasworld.maxentities; i++)
	{
		ent = &aasworld.entities[i];
		if (ent->i.modelindex != modelindex) continue;
		FUNC1(ent->i.origin, origin, dir);
		if (FUNC2(dir[0]) < 40)
		{
			if (FUNC2(dir[1]) < 40)
			{
				dist = FUNC0(dir);
				if (dist < bestdist)
				{
					bestdist = dist;
					bestentnum = i;
				} //end if
			} //end if
		} //end if
	} //end for
	return bestentnum;
}