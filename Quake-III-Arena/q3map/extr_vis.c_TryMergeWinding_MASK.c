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
struct TYPE_6__ {int numpoints; scalar_t__** points; } ;
typedef  TYPE_1__ winding_t ;
typedef  scalar_t__ vec_t ;
typedef  int /*<<< orphan*/  vec3_t ;
typedef  scalar_t__ qboolean ;

/* Variables and functions */
 scalar_t__ CONTINUOUS_EPSILON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,scalar_t__*,int /*<<< orphan*/ ) ; 
 double FUNC6 (scalar_t__) ; 

winding_t *FUNC7 (winding_t *f1, winding_t *f2, vec3_t planenormal)
{
	vec_t		*p1, *p2, *p3, *p4, *back;
	winding_t	*newf;
	int			i, j, k, l;
	vec3_t		normal, delta;
	vec_t		dot;
	qboolean	keep1, keep2;
	

	//
	// find a common edge
	//	
	p1 = p2 = NULL;	// stop compiler warning
	j = 0;			// 
	
	for (i = 0; i < f1->numpoints; i++)
	{
		p1 = f1->points[i];
		p2 = f1->points[(i+1) % f1->numpoints];
		for (j = 0; j < f2->numpoints; j++)
		{
			p3 = f2->points[j];
			p4 = f2->points[(j+1) % f2->numpoints];
			for (k = 0; k < 3; k++)
			{
				if (FUNC6(p1[k] - p4[k]) > 0.1)//EQUAL_EPSILON) //ME
					break;
				if (FUNC6(p2[k] - p3[k]) > 0.1)//EQUAL_EPSILON) //ME
					break;
			} //end for
			if (k==3)
				break;
		} //end for
		if (j < f2->numpoints)
			break;
	} //end for
	
	if (i == f1->numpoints)
		return NULL;			// no matching edges

	//
	// check slope of connected lines
	// if the slopes are colinear, the point can be removed
	//
	back = f1->points[(i+f1->numpoints-1)%f1->numpoints];
	FUNC5 (p1, back, delta);
	FUNC0 (planenormal, delta, normal);
	FUNC4 (normal, normal);
	
	back = f2->points[(j+2)%f2->numpoints];
	FUNC5 (back, p1, delta);
	dot = FUNC1 (delta, normal);
	if (dot > CONTINUOUS_EPSILON)
		return NULL;			// not a convex polygon
	keep1 = (qboolean)(dot < -CONTINUOUS_EPSILON);
	
	back = f1->points[(i+2)%f1->numpoints];
	FUNC5 (back, p2, delta);
	FUNC0 (planenormal, delta, normal);
	FUNC4 (normal, normal);

	back = f2->points[(j+f2->numpoints-1)%f2->numpoints];
	FUNC5 (back, p2, delta);
	dot = FUNC1 (delta, normal);
	if (dot > CONTINUOUS_EPSILON)
		return NULL;			// not a convex polygon
	keep2 = (qboolean)(dot < -CONTINUOUS_EPSILON);

	//
	// build the new polygon
	//
	newf = FUNC2 (f1->numpoints + f2->numpoints);
	
	// copy first polygon
	for (k=(i+1)%f1->numpoints ; k != i ; k=(k+1)%f1->numpoints)
	{
		if (k==(i+1)%f1->numpoints && !keep2)
			continue;
		
		FUNC3 (f1->points[k], newf->points[newf->numpoints]);
		newf->numpoints++;
	}
	
	// copy second polygon
	for (l= (j+1)%f2->numpoints ; l != j ; l=(l+1)%f2->numpoints)
	{
		if (l==(j+1)%f2->numpoints && !keep1)
			continue;
		FUNC3 (f2->points[l], newf->points[newf->numpoints]);
		newf->numpoints++;
	}

	return newf;
}