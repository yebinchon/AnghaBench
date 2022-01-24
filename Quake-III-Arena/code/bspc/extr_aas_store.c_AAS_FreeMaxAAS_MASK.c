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
struct TYPE_2__ {scalar_t__ numclusters; int /*<<< orphan*/ * clusters; scalar_t__ portalindexsize; int /*<<< orphan*/ * portalindex; scalar_t__ numportals; int /*<<< orphan*/ * portals; scalar_t__ numnodes; int /*<<< orphan*/ * nodes; scalar_t__ reachabilitysize; int /*<<< orphan*/ * reachability; scalar_t__ numareasettings; int /*<<< orphan*/ * areasettings; scalar_t__ numareas; int /*<<< orphan*/ * areas; scalar_t__ faceindexsize; int /*<<< orphan*/ * faceindex; scalar_t__ numfaces; int /*<<< orphan*/ * faces; scalar_t__ edgeindexsize; int /*<<< orphan*/ * edgeindex; scalar_t__ numedges; int /*<<< orphan*/ * edges; scalar_t__ numplanes; int /*<<< orphan*/ * planes; scalar_t__ numvertexes; int /*<<< orphan*/ * vertexes; scalar_t__ numbboxes; int /*<<< orphan*/ * bboxes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/ * aas_edgechain ; 
 int /*<<< orphan*/ * aas_planechain ; 
 int /*<<< orphan*/ * aas_vertexchain ; 
 TYPE_1__ aasworld ; 
 scalar_t__ allocatedaasmem ; 

void FUNC3(void)
{
	//bounding boxes
	if (aasworld.bboxes) FUNC0(aasworld.bboxes);
	aasworld.bboxes = NULL;
	aasworld.numbboxes = 0;
	//vertexes
	if (aasworld.vertexes) FUNC0(aasworld.vertexes);
	aasworld.vertexes = NULL;
	aasworld.numvertexes = 0;
	//planes
	if (aasworld.planes) FUNC0(aasworld.planes);
	aasworld.planes = NULL;
	aasworld.numplanes = 0;
	//edges
	if (aasworld.edges) FUNC0(aasworld.edges);
	aasworld.edges = NULL;
	aasworld.numedges = 0;
	//edge index
	if (aasworld.edgeindex) FUNC0(aasworld.edgeindex);
	aasworld.edgeindex = NULL;
	aasworld.edgeindexsize = 0;
	//faces
	if (aasworld.faces) FUNC0(aasworld.faces);
	aasworld.faces = NULL;
	aasworld.numfaces = 0;
	//face index
	if (aasworld.faceindex) FUNC0(aasworld.faceindex);
	aasworld.faceindex = NULL;
	aasworld.faceindexsize = 0;
	//convex areas
	if (aasworld.areas) FUNC0(aasworld.areas);
	aasworld.areas = NULL;
	aasworld.numareas = 0;
	//convex area settings
	if (aasworld.areasettings) FUNC0(aasworld.areasettings);
	aasworld.areasettings = NULL;
	aasworld.numareasettings = 0;
	//reachablity list
	if (aasworld.reachability) FUNC0(aasworld.reachability);
	aasworld.reachability = NULL;
	aasworld.reachabilitysize = 0;
	//nodes of the bsp tree
	if (aasworld.nodes) FUNC0(aasworld.nodes);
	aasworld.nodes = NULL;
	aasworld.numnodes = 0;
	//cluster portals
	if (aasworld.portals) FUNC0(aasworld.portals);
	aasworld.portals = NULL;
	aasworld.numportals = 0;
	//cluster portal index
	if (aasworld.portalindex) FUNC0(aasworld.portalindex);
	aasworld.portalindex = NULL;
	aasworld.portalindexsize = 0;
	//clusters
	if (aasworld.clusters) FUNC0(aasworld.clusters);
	aasworld.clusters = NULL;
	aasworld.numclusters = 0;
	
	FUNC1("freed ");
	FUNC2(allocatedaasmem);
	FUNC1(" of AAS memory\n");
	allocatedaasmem = 0;
	//
	if (aas_vertexchain) FUNC0(aas_vertexchain);
	aas_vertexchain = NULL;
	if (aas_planechain) FUNC0(aas_planechain);
	aas_planechain = NULL;
	if (aas_edgechain) FUNC0(aas_edgechain);
	aas_edgechain = NULL;
}