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
struct TYPE_5__ {int numpoints; int /*<<< orphan*/ * p; } ;
typedef  TYPE_1__ winding_t ;
typedef  int /*<<< orphan*/  vec3_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

winding_t *FUNC3(winding_t *w, vec3_t point, int spot)
{
	int i, j;
	winding_t *neww;

	if (spot > w->numpoints)
	{
		FUNC1("AddWindingPoint: num > w->numpoints");
	} //end if
	if (spot < 0)
	{
		FUNC1("AddWindingPoint: num < 0");
	} //end if
	neww = FUNC0(w->numpoints + 1);
	neww->numpoints = w->numpoints + 1;
	for (i = 0, j = 0; i < neww->numpoints; i++)
	{
		if (i == spot)
		{
			FUNC2(point, neww->p[i]);
		} //end if
		else
		{
			FUNC2(w->p[j], neww->p[i]);
			j++;
		} //end else
	} //end for
	return neww;
}