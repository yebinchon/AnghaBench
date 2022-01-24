#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {size_t planenum; struct TYPE_8__** children; scalar_t__ tmparea; } ;
typedef  TYPE_1__ tmp_node_t ;
struct TYPE_9__ {int /*<<< orphan*/  dist; int /*<<< orphan*/  normal; } ;
typedef  TYPE_2__ plane_t ;
struct TYPE_10__ {int* children; int /*<<< orphan*/  planenum; } ;
typedef  TYPE_3__ aas_node_t ;
struct TYPE_12__ {int numnodes; TYPE_3__* nodes; } ;
struct TYPE_11__ {int max_nodes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 TYPE_6__ aasworld ; 
 TYPE_2__* mapplanes ; 
 TYPE_4__ max_aas ; 

int FUNC3(tmp_node_t *tmpnode)
{
	int aasnodenum;
	plane_t *plane;
	aas_node_t *aasnode;

	//if it is a solid leaf
	if (!tmpnode) return 0;
	//negative so it's an area
	if (tmpnode->tmparea) return FUNC1(tmpnode->tmparea);
	//it's another node
	//the first node is a dummy
	if (aasworld.numnodes == 0) aasworld.numnodes = 1;
	if (aasworld.numnodes >= max_aas.max_nodes)
	{
		FUNC2("AAS_MAX_NODES = %d", max_aas.max_nodes);
	} //end if
	aasnodenum = aasworld.numnodes;
	aasnode = &aasworld.nodes[aasworld.numnodes++];
	plane = &mapplanes[tmpnode->planenum];
	FUNC0(plane->normal, plane->dist, &aasnode->planenum);
	aasnode->children[0] = FUNC3(tmpnode->children[0]);
	aasnode->children[1] = FUNC3(tmpnode->children[1]);
	return aasnodenum;
}