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
typedef  int /*<<< orphan*/  vec_t ;
typedef  int /*<<< orphan*/  vec3_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 double FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5 (winding_t *w, vec3_t normal, vec_t *dist)
{
	vec3_t v1, v2;
	int i;

	//find two vectors each longer than 0.5 units
	for (i = 0; i < w->numpoints; i++)
	{
		FUNC4(w->p[(i+1) % w->numpoints], w->p[i], v1);
		FUNC4(w->p[(i+2) % w->numpoints], w->p[i], v2);
		if (FUNC2(v1) > 0.5 && FUNC2(v2) > 0.5) break;
	} //end for
	FUNC0(v2, v1, normal);
	FUNC3(normal);
	*dist = FUNC1(w->p[0], normal);
}