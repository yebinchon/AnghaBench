#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int* vec3_t ;
struct TYPE_9__ {int* mins; int* maxs; } ;
typedef  TYPE_1__ q1_dnode_t ;
struct TYPE_10__ {int* mins; int* maxs; } ;
typedef  TYPE_2__ bspbrush_t ;
struct TYPE_11__ {size_t* headnode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*) ; 
 int /*<<< orphan*/ * map_maxs ; 
 int /*<<< orphan*/ * map_mins ; 
 TYPE_4__* q1_dmodels ; 
 TYPE_1__* q1_dnodes ; 
 scalar_t__ q1_numbrushes ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

bspbrush_t *FUNC6(int modelnum)
{
	bspbrush_t *brushlist;
	bspbrush_t *brush;
	q1_dnode_t *headnode;
	vec3_t mins, maxs;
	int i;

	//
	headnode = &q1_dnodes[q1_dmodels[modelnum].headnode[0]];
	//get the mins and maxs of the world
	FUNC4(headnode->mins, mins);
	FUNC4(headnode->maxs, maxs);
	//enlarge these mins and maxs
	for (i = 0; i < 3; i++)
	{
		mins[i] -= 8;
		maxs[i] += 8;
	} //end for
	//NOTE: have to add the BSP tree mins and maxs to the MAP mins and maxs
	FUNC0(mins, map_mins, map_maxs);
	FUNC0(maxs, map_mins, map_maxs);
	//
	if (!modelnum)
	{
		FUNC2("brush size: %5.0f,%5.0f,%5.0f to %5.0f,%5.0f,%5.0f\n",
							map_mins[0], map_mins[1], map_mins[2],
							map_maxs[0], map_maxs[1], map_maxs[2]);
	} //end if
	//create one huge brush containing the whole world
	brush = FUNC1(mins, maxs);
	FUNC4(mins, brush->mins);
	FUNC4(maxs, brush->maxs);
	//
#ifdef Q1_PRINT
	qprintf("creating Quake brushes\n");
	qprintf("%5d brushes", q1_numbrushes = 0);
#endif //Q1_PRINT
	//create the brushes
	brushlist = FUNC3(brush, q1_dmodels[modelnum].headnode[0]);
	//
#ifdef Q1_PRINT
	qprintf("\n");
#endif //Q1_PRINT
	//now we've got a list with brushes!
	return brushlist;
}