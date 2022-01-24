#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int numpoints; int /*<<< orphan*/ * p; } ;
typedef  TYPE_1__ winding_t ;
typedef  scalar_t__ vec_t ;
typedef  int /*<<< orphan*/  vec3_t ;
typedef  int qboolean ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ ON_EPSILON ; 
 int SIDE_BACK ; 
 int SIDE_CROSS ; 
 int SIDE_FRONT ; 
 int SIDE_ON ; 

int FUNC1 (winding_t *w, vec3_t normal, vec_t dist)
{
	qboolean	front, back;
	int			i;
	vec_t		d;

	front = false;
	back = false;
	for (i=0 ; i<w->numpoints ; i++)
	{
		d = FUNC0 (w->p[i], normal) - dist;
		if (d < -ON_EPSILON)
		{
			if (front)
				return SIDE_CROSS;
			back = true;
			continue;
		}
		if (d > ON_EPSILON)
		{
			if (back)
				return SIDE_CROSS;
			front = true;
			continue;
		}
	}

	if (back)
		return SIDE_BACK;
	if (front)
		return SIDE_FRONT;
	return SIDE_ON;
}