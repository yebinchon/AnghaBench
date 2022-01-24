#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * sides; } ;
typedef  TYPE_1__ bspbrush_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  c_active_brushes ; 
 scalar_t__ c_brushmemory ; 
 scalar_t__ c_peak_brushmemory ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int numthreads ; 

bspbrush_t *FUNC3 (int numsides)
{
	bspbrush_t	*bb;
	int			c;

	c = (int)&(((bspbrush_t *)0)->sides[numsides]);
	bb = FUNC0(c);
	FUNC2 (bb, 0, c);
	if (numthreads == 1)
	{
		c_active_brushes++;
		c_brushmemory += FUNC1(bb);
		if (c_brushmemory > c_peak_brushmemory)
				c_peak_brushmemory = c_brushmemory;
	} //end if
	return bb;
}