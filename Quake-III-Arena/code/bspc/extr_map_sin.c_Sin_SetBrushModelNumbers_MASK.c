#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {size_t modelnum; } ;
typedef  TYPE_1__ entity_t ;
struct TYPE_7__ {int headnode; } ;
struct TYPE_6__ {int* children; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,size_t) ; 
 TYPE_3__* sin_dmodels ; 
 TYPE_2__* sin_dnodes ; 

void FUNC4(entity_t *mapent)
{
	int n, pn;
	int leafnum;

	//
	FUNC0();
	//head node (root) of the bsp tree
	n = sin_dmodels[mapent->modelnum].headnode;
	pn = 0;
	
	do
	{
		//if we are in a leaf (negative node number)
		if (n < 0)
		{
			//number of the leaf
			leafnum = (-n) - 1;
			//set the brush numbers
			FUNC3(leafnum, mapent->modelnum);
			//walk back into the tree to find a second child to continue with
			for (pn = FUNC1(); pn >= 0; n = pn, pn = FUNC1())
			{
				//if we took the first child at the parent node
				if (sin_dnodes[pn].children[0] == n) break;
			} //end for
			//if the stack wasn't empty (if not processed whole tree)
			if (pn >= 0)
			{
				//push the parent node again
				FUNC2(pn);
				//we proceed with the second child of the parent node
				n = sin_dnodes[pn].children[1];
			} //end if
		} //end if
		else
		{
			//push the current node onto the stack
			FUNC2(n);
			//walk forward into the tree to the first child
			n = sin_dnodes[n].children[0];
		} //end else
	} while(pn >= 0);
}