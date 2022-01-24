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
typedef  int* vec3_t ;
struct TYPE_4__ {scalar_t__ occupied; } ;
struct TYPE_5__ {TYPE_1__ outside_node; int /*<<< orphan*/ * headnode; } ;
typedef  TYPE_2__ tree_t ;
typedef  scalar_t__ qboolean ;
typedef  int /*<<< orphan*/  node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (int*,int /*<<< orphan*/ ) ; 
 scalar_t__ c_floodedleafs ; 
 int /*<<< orphan*/ * entities ; 
 int num_entities ; 
 scalar_t__ qfalse ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 scalar_t__ qtrue ; 
 int /*<<< orphan*/  vec3_origin ; 

qboolean FUNC5( tree_t *tree ) {
	int		i;
	vec3_t	origin;
	const char	*cl;
	qboolean	inside;
	node_t *headnode;

	headnode = tree->headnode;
	FUNC4 ("--- FloodEntities ---\n");
	inside = qfalse;
	tree->outside_node.occupied = 0;

	c_floodedleafs = 0;
	for (i=1 ; i<num_entities ; i++)
	{
		FUNC0 (&entities[i], "origin", origin);
		if (FUNC3(origin, vec3_origin))
			continue;

		cl = FUNC2 (&entities[i], "classname");

		origin[2] += 1;	// so objects on floor are ok

		if (FUNC1 (headnode, origin, &entities[i]))
			inside = qtrue;
	}

	FUNC4("%5i flooded leafs\n", c_floodedleafs );

	if (!inside)
	{
		FUNC4 ("no entities in open -- no filling\n");
	}
	else if (tree->outside_node.occupied)
	{
		FUNC4 ("entity reached from outside -- no filling\n");
	}

	return (qboolean)(inside && !tree->outside_node.occupied);
}