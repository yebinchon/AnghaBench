#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int* children; } ;
typedef  TYPE_1__ node_t ;
typedef  int /*<<< orphan*/  divline_t ;
typedef  int boolean ;
struct TYPE_5__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;

/* Variables and functions */
 int NF_SUBSECTOR ; 
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* nodes ; 
 TYPE_2__ strace ; 
 int /*<<< orphan*/  t2x ; 
 int /*<<< orphan*/  t2y ; 

boolean FUNC2 (int bspnum)
{
    node_t*	bsp;
    int		side;

    if (bspnum & NF_SUBSECTOR)
    {
	if (bspnum == -1)
	    return FUNC0 (0);
	else
	    return FUNC0 (bspnum&(~NF_SUBSECTOR));
    }
		
    bsp = &nodes[bspnum];
    
    // decide which side the start point is on
    side = FUNC1 (strace.x, strace.y, (divline_t *)bsp);
    if (side == 2)
	side = 0;	// an "on" should cross both sides

    // cross the starting side
    if (!FUNC2 (bsp->children[side]) )
	return false;
	
    // the partition plane is crossed here
    if (side == FUNC1 (t2x, t2y,(divline_t *)bsp))
    {
	// the line doesn't touch the other side
	return true;
    }
    
    // cross the ending side		
    return FUNC2 (bsp->children[side^1]);
}