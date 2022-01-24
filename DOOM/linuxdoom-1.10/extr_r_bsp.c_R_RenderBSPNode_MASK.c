#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int* children; int /*<<< orphan*/ * bbox; } ;
typedef  TYPE_1__ node_t ;

/* Variables and functions */
 int NF_SUBSECTOR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_1__* nodes ; 
 int /*<<< orphan*/  viewx ; 
 int /*<<< orphan*/  viewy ; 

void FUNC3 (int bspnum)
{
    node_t*	bsp;
    int		side;

    // Found a subsector?
    if (bspnum & NF_SUBSECTOR)
    {
	if (bspnum == -1)			
	    FUNC2 (0);
	else
	    FUNC2 (bspnum&(~NF_SUBSECTOR));
	return;
    }
		
    bsp = &nodes[bspnum];
    
    // Decide which side the view point is on.
    side = FUNC1 (viewx, viewy, bsp);

    // Recursively divide front space.
    FUNC3 (bsp->children[side]); 

    // Possibly divide back space.
    if (FUNC0 (bsp->bbox[side^1]))	
	FUNC3 (bsp->children[side^1]);
}