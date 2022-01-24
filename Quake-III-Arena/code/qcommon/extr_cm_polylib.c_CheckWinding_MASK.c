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
struct TYPE_5__ {int numpoints; int** p; } ;
typedef  TYPE_1__ winding_t ;
typedef  int vec_t ;
typedef  int /*<<< orphan*/  vec3_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_DROP ; 
 int MAX_MAP_BOUNDS ; 
 int ON_EPSILON ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int*,int*,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int*) ; 

void FUNC8 (winding_t *w)
{
	int		i, j;
	vec_t	*p1, *p2;
	vec_t	d, edgedist;
	vec3_t	dir, edgenormal, facenormal;
	vec_t	area;
	vec_t	facedist;

	if (w->numpoints < 3)
		FUNC0 (ERR_DROP, "CheckWinding: %i points",w->numpoints);
	
	area = FUNC6(w);
	if (area < 1)
		FUNC0 (ERR_DROP, "CheckWinding: %f area", area);

	FUNC7 (w, facenormal, &facedist);
	
	for (i=0 ; i<w->numpoints ; i++)
	{
		p1 = w->p[i];

		for (j=0 ; j<3 ; j++)
			if (p1[j] > MAX_MAP_BOUNDS || p1[j] < -MAX_MAP_BOUNDS)
				FUNC0 (ERR_DROP, "CheckFace: BUGUS_RANGE: %f",p1[j]);

		j = i+1 == w->numpoints ? 0 : i+1;
		
	// check the point is on the face plane
		d = FUNC2 (p1, facenormal) - facedist;
		if (d < -ON_EPSILON || d > ON_EPSILON)
			FUNC0 (ERR_DROP, "CheckWinding: point off plane");
	
	// check the edge isnt degenerate
		p2 = w->p[j];
		FUNC5 (p2, p1, dir);
		
		if (FUNC3 (dir) < ON_EPSILON)
			FUNC0 (ERR_DROP, "CheckWinding: degenerate edge");
			
		FUNC1 (facenormal, dir, edgenormal);
		FUNC4 (edgenormal, edgenormal);
		edgedist = FUNC2 (p1, edgenormal);
		edgedist += ON_EPSILON;
		
	// all other points must be on front side
		for (j=0 ; j<w->numpoints ; j++)
		{
			if (j == i)
				continue;
			d = FUNC2 (w->p[j], edgenormal);
			if (d > edgedist)
				FUNC0 (ERR_DROP, "CheckWinding: non-convex");
		}
	}
}