#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vec_t ;
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_2__ {int /*<<< orphan*/  point; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 size_t MAX_SUPERVERTS ; 
 scalar_t__ OFF_EPSILON ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  c_degenerate ; 
 int /*<<< orphan*/  c_tjunctions ; 
 TYPE_1__* dvertexes ; 
 int /*<<< orphan*/  edge_dir ; 
 int /*<<< orphan*/  edge_start ; 
 int* edge_verts ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int num_edge_verts ; 
 size_t numsuperverts ; 
 int* superverts ; 

void FUNC7 (vec_t start, vec_t end, int p1, int p2, int startvert)
{
	int		j, k;
	vec_t	dist;
	vec3_t	delta;
	vec3_t	exact;
	vec3_t	off;
	vec_t	error;
	vec3_t	p;

	if (p1 == p2)
	{
		c_degenerate++;
		return;		// degenerate edge
	}

	for (k=startvert ; k<num_edge_verts ; k++)
	{
		j = edge_verts[k];
		if (j==p1 || j == p2)
			continue;

		FUNC2 (dvertexes[j].point, p);

		FUNC5 (p, edge_start, delta);
		dist = FUNC0 (delta, edge_dir);
		if (dist <=start || dist >= end)
			continue;		// off an end
		FUNC4 (edge_start, dist, edge_dir, exact);
		FUNC5 (p, exact, off);
		error = FUNC3 (off);

		if (FUNC6(error) > OFF_EPSILON)
			continue;		// not on the edge

		// break the edge
		c_tjunctions++;
		FUNC7 (start, dist, p1, j, k+1);
		FUNC7 (dist, end, j, p2, k+1);
		return;
	}

	// the edge p1 to p2 is now free of tjunctions
	if (numsuperverts >= MAX_SUPERVERTS)
		FUNC1 ("MAX_SUPERVERTS");
	superverts[numsuperverts] = p1;
	numsuperverts++;
}