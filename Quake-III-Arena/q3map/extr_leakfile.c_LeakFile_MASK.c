#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  double* vec3_t ;
struct TYPE_7__ {int occupied; int /*<<< orphan*/  occupant; TYPE_2__* portals; } ;
struct TYPE_5__ {TYPE_3__ outside_node; } ;
typedef  TYPE_1__ tree_t ;
struct TYPE_6__ {int /*<<< orphan*/  winding; TYPE_3__** nodes; struct TYPE_6__** next; } ;
typedef  TYPE_2__ portal_t ;
typedef  TYPE_3__ node_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,double*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,double*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,double,double,double) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 char* source ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,char*) ; 

void FUNC8 (tree_t *tree)
{
	vec3_t	mid;
	FILE	*linefile;
	char	filename[1024];
	node_t	*node;
	int		count;

	if (!tree->outside_node.occupied)
		return;

	FUNC6 ("--- LeakFile ---\n");

	//
	// write the points to the file
	//
	FUNC7 (filename, "%s.lin", source);
	linefile = FUNC4 (filename, "w");
	if (!linefile)
		FUNC0 ("Couldn't open %s\n", filename);

	count = 0;
	node = &tree->outside_node;
	while (node->occupied > 1)
	{
		int			next;
		portal_t	*p, *nextportal;
		node_t		*nextnode;
		int			s;

		// find the best portal exit
		next = node->occupied;
		for (p=node->portals ; p ; p = p->next[!s])
		{
			s = (p->nodes[0] == node);
			if (p->nodes[s]->occupied
				&& p->nodes[s]->occupied < next)
			{
				nextportal = p;
				nextnode = p->nodes[s];
				next = nextnode->occupied;
			}
		}
		node = nextnode;
		FUNC2 (nextportal->winding, mid);
		FUNC5 (linefile, "%f %f %f\n", mid[0], mid[1], mid[2]);
		count++;
	}
	// add the occupant center
	FUNC1 (node->occupant, "origin", mid);

	FUNC5 (linefile, "%f %f %f\n", mid[0], mid[1], mid[2]);
	FUNC6 ("%5i point linefile\n", count+1);

	FUNC3 (linefile);
}