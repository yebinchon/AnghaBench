#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int numpoints; int /*<<< orphan*/ ** p; } ;
typedef  TYPE_2__ winding_t ;
typedef  int /*<<< orphan*/  vec_t ;
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_8__ {int /*<<< orphan*/  normal; } ;
struct TYPE_10__ {scalar_t__ hint; TYPE_4__** nodes; TYPE_1__ plane; TYPE_2__* winding; struct TYPE_10__** next; } ;
typedef  TYPE_3__ portal_t ;
struct TYPE_11__ {scalar_t__ planenum; int cluster; TYPE_3__* portals; scalar_t__ opaque; struct TYPE_11__** children; } ;
typedef  TYPE_4__ node_t ;

/* Variables and functions */
 double FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ PLANENUM_LEAF ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  pf ; 

void FUNC5 (node_t *node)
{
	int			i, s;	
	portal_t	*p;
	winding_t	*w;
	vec3_t		normal;
	vec_t		dist;

	// decision node
	if (node->planenum != PLANENUM_LEAF) {
		FUNC5 (node->children[0]);
		FUNC5 (node->children[1]);
		return;
	}
	
	if (node->opaque) {
		return;
	}

	for (p = node->portals ; p ; p=p->next[s])
	{
		w = p->winding;
		s = (p->nodes[1] == node);
		if (w && p->nodes[0] == node)
		{
			if (!FUNC1(p))
				continue;
			// write out to the file
			
			// sometimes planes get turned around when they are very near
			// the changeover point between different axis.  interpret the
			// plane the same way vis will, and flip the side orders if needed
			// FIXME: is this still relevent?
			FUNC2 (w, normal, &dist);
			if ( FUNC0 (p->plane.normal, normal) < 0.99 )
			{	// backwards...
				FUNC4 (pf,"%i %i %i ",w->numpoints, p->nodes[1]->cluster, p->nodes[0]->cluster);
			}
			else
				FUNC4 (pf,"%i %i %i ",w->numpoints, p->nodes[0]->cluster, p->nodes[1]->cluster);
			if (p->hint)
				FUNC4 (pf, "1 ");
			else
				FUNC4 (pf, "0 ");
			for (i=0 ; i<w->numpoints ; i++)
			{
				FUNC4 (pf,"(");
				FUNC3 (pf, w->p[i][0]);
				FUNC3 (pf, w->p[i][1]);
				FUNC3 (pf, w->p[i][2]);
				FUNC4 (pf,") ");
			}
			FUNC4 (pf,"\n");
		}
	}

}