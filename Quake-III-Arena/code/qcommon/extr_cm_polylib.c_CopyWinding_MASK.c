#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {size_t numpoints; scalar_t__* p; } ;
typedef  TYPE_1__ winding_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*,int) ; 

winding_t	*FUNC2 (winding_t *w)
{
	int			size;
	winding_t	*c;

	c = FUNC0 (w->numpoints);
	size = (int)((winding_t *)0)->p[w->numpoints];
	FUNC1 (c, w, size);
	return c;
}