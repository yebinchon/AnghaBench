#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__* vec3_t ;
struct TYPE_7__ {int /*<<< orphan*/  maxs; int /*<<< orphan*/  mins; TYPE_2__* headnode; } ;
typedef  TYPE_1__ tree_t ;
struct TYPE_8__ {int /*<<< orphan*/  contents; int /*<<< orphan*/  planenum; } ;
typedef  TYPE_2__ node_t ;
typedef  int /*<<< orphan*/  bspbrush_t ;

/* Variables and functions */
 TYPE_2__* FUNC0 () ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  CONTENTS_SOLID ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int,int,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  PLANENUM_LEAF ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_1__* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,int /*<<< orphan*/ ) ; 
 scalar_t__ cancelconversion ; 
 scalar_t__* map_maxs ; 
 scalar_t__* map_mins ; 
 int /*<<< orphan*/  nocsg ; 

tree_t *FUNC8(int brush_start, int brush_end)
{
	bspbrush_t *brushes;
	tree_t *tree;
	node_t *node;
	vec3_t mins, maxs;

	//take the whole world
	mins[0] = map_mins[0] - 8;
	mins[1] = map_mins[1] - 8;
	mins[2] = map_mins[2] - 8;

	maxs[0] = map_maxs[0] + 8;
	maxs[1] = map_maxs[1] + 8;
	maxs[2] = map_maxs[2] + 8;

	//reset the brush bsp
	FUNC5();

	// the makelist and chopbrushes could be cached between the passes...

	//create a list with brushes that are within the given mins/maxs
	//some brushes will be cut and only the part that falls within the
	//mins/maxs will be in the bush list
	brushes = FUNC4(brush_start, brush_end, mins, maxs);
	//

	if (!brushes)
	{
		node = FUNC0 ();
		node->planenum = PLANENUM_LEAF;
		node->contents = CONTENTS_SOLID;

		tree = FUNC6();
		tree->headnode = node;
		FUNC7(mins, tree->mins);
		FUNC7(maxs, tree->maxs);
	} //end if
	else
	{
		//Carves any intersecting solid brushes into the minimum number
		//of non-intersecting brushes. 
		if (!nocsg)
		{
			brushes = FUNC2(brushes);
			/*
			if (create_aas)
			{
				brushes = MergeBrushes(brushes);
			} //end if*/
		} //end if
		//if the conversion is cancelled
		if (cancelconversion)
		{
			FUNC3(brushes);
			return NULL;
		} //end if
		//create the actual bsp tree
		tree = FUNC1(brushes, mins, maxs);
	} //end else
	//return the tree
	return tree;
}