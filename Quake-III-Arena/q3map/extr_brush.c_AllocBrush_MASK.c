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
struct TYPE_5__ {int /*<<< orphan*/ * sides; } ;
typedef  TYPE_1__ bspbrush_t ;

/* Variables and functions */
 int /*<<< orphan*/  c_active_brushes ; 
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int numthreads ; 

bspbrush_t *FUNC2 (int numsides)
{
	bspbrush_t	*bb;
	int			c;

	c = (int)&(((bspbrush_t *)0)->sides[numsides]);
	bb = FUNC0(c);
	FUNC1 (bb, 0, c);
	if (numthreads == 1)
		c_active_brushes++;
	return bb;
}