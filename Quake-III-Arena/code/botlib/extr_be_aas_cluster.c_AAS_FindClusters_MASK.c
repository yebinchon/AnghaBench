#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ numportals; int /*<<< orphan*/  firstportal; scalar_t__ numreachabilityareas; scalar_t__ numareas; } ;
typedef  TYPE_2__ aas_cluster_t ;
struct TYPE_6__ {int numareas; size_t numclusters; int /*<<< orphan*/  portalindexsize; TYPE_2__* clusters; TYPE_1__* areasettings; } ;
struct TYPE_4__ {int contents; int /*<<< orphan*/  numreachableareas; scalar_t__ cluster; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int,size_t) ; 
 size_t AAS_MAX_CLUSTERS ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int AREACONTENTS_CLUSTERPORTAL ; 
 TYPE_3__ aasworld ; 
 scalar_t__ nofaceflood ; 
 int qfalse ; 
 int qtrue ; 

int FUNC5(void)
{
	int i;
	aas_cluster_t *cluster;

	FUNC4();
	//
	for (i = 1; i < aasworld.numareas; i++)
	{
		//if the area is already part of a cluster
		if (aasworld.areasettings[i].cluster)
			continue;
		// if not flooding through faces only use areas that have reachabilities
		if (nofaceflood)
		{
			if (!aasworld.areasettings[i].numreachableareas)
				continue;
		} //end if
		//if the area is a cluster portal
		if (aasworld.areasettings[i].contents & AREACONTENTS_CLUSTERPORTAL)
			continue;
		if (aasworld.numclusters >= AAS_MAX_CLUSTERS)
		{
			FUNC0("AAS_MAX_CLUSTERS");
			return qfalse;
		} //end if
		cluster = &aasworld.clusters[aasworld.numclusters];
		cluster->numareas = 0;
		cluster->numreachabilityareas = 0;
		cluster->firstportal = aasworld.portalindexsize;
		cluster->numportals = 0;
		//flood the areas in this cluster
		if (!FUNC2(i, aasworld.numclusters))
			return qfalse;
		if (!FUNC1(aasworld.numclusters))
			return qfalse;
		//number the cluster areas
		//AAS_NumberClusterPortals(aasworld.numclusters);
		FUNC3(aasworld.numclusters);
		//Log_Write("cluster %d has %d areas\r\n", aasworld.numclusters, cluster->numareas);
		aasworld.numclusters++;
	} //end for
	return qtrue;
}