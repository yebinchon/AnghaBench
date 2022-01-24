#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int planenum; } ;
typedef  TYPE_1__ side_t ;
struct TYPE_12__ {int contents; int planenum; struct TYPE_12__** children; int /*<<< orphan*/ * volume; int /*<<< orphan*/ * brushlist; struct TYPE_12__* parent; TYPE_1__* side; } ;
typedef  TYPE_2__ node_t ;
typedef  int /*<<< orphan*/  bspbrush_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_2__* FUNC1 () ; 
 int CONTENTS_SOLID ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 TYPE_1__* FUNC11 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int FUNC14 () ; 
 int c_brushmemory ; 
 int c_nodememory ; 
 int /*<<< orphan*/  c_nodes ; 
 int c_peak_totalbspmemory ; 
 int /*<<< orphan*/  c_solidleafnodes ; 
 scalar_t__ cancelconversion ; 
 scalar_t__ create_aas ; 
 scalar_t__ drawflag ; 
 int numthreads ; 

void FUNC15(int threadid)
{
	node_t *newnode, *node;
	side_t *bestside;
	int i, totalmem;
	bspbrush_t *brushes;

	for (node = FUNC9(); node; )
	{
		//if the nodelist isn't empty try to add another thread
		//if (NodeListSize() > 10) AddThread(BuildTreeThread);
		//display the number of nodes processed so far
		if (numthreads == 1)
			FUNC7();

		brushes = node->brushlist;

		if (numthreads == 1)
		{
			totalmem = FUNC14() + c_nodememory + c_brushmemory;
			if (totalmem > c_peak_totalbspmemory)
			{
				c_peak_totalbspmemory = totalmem;
			} //end if
			c_nodes++;
		} //endif

		if (drawflag)
		{
			FUNC3(brushes, node);
		} //end if

		if (cancelconversion)
		{
			bestside = NULL;
		} //end if
		else
		{
			// find the best plane to use as a splitter
			bestside = FUNC11(brushes, node);
		} //end else
		//if there's no split side left
		if (!bestside)
		{
			//create a leaf out of the node
			FUNC8(node, brushes);
			if (node->contents & CONTENTS_SOLID) c_solidleafnodes++;
			if (create_aas)
			{
				//free up memory!!!
				FUNC6(node->brushlist);
				node->brushlist = NULL;
			} //end if
			//free the node volume brush (it is not used anymore)
			if (node->volume)
			{
				FUNC5(node->volume);
				node->volume = NULL;
			} //end if
			node = FUNC9();
			continue;
		} //end if

		// this is a splitplane node
		node->side = bestside;
		node->planenum = bestside->planenum & ~1;	//always use front facing

		//allocate children
		for (i = 0; i < 2; i++)
		{
			newnode = FUNC1();
			newnode->parent = node;
			node->children[i] = newnode;
		} //end for

		//split the brush list in two for both children
		FUNC13(brushes, node, &node->children[0]->brushlist, &node->children[1]->brushlist);

		FUNC2(node->children[0]->brushlist, node->children[1]->brushlist);
		//free the old brush list
		FUNC6(brushes);
		node->brushlist = NULL;

		//split the volume brush of the node for the children
		FUNC12(node->volume, node->planenum, &node->children[0]->volume,
								&node->children[1]->volume);

		if (!node->children[0]->volume || !node->children[1]->volume)
		{
			FUNC4("child without volume brush");
		} //end if

		//free the volume brush
		if (node->volume)
		{
			FUNC5(node->volume);
			node->volume = NULL;
		} //end if
		//add both children to the node list
		//AddNodeToList(node->children[0]);
		FUNC0(node->children[1]);
		node = node->children[0];
	} //end while
	FUNC10(threadid);
}