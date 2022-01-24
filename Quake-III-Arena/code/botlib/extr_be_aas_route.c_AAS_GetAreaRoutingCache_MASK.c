#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int travelflags; int cluster; int areanum; int starttraveltime; int /*<<< orphan*/  type; int /*<<< orphan*/  time; struct TYPE_12__* prev; struct TYPE_12__* next; int /*<<< orphan*/  origin; } ;
typedef  TYPE_3__ aas_routingcache_t ;
struct TYPE_13__ {TYPE_3__*** clusterareacache; TYPE_2__* areas; TYPE_1__* clusters; } ;
struct TYPE_11__ {int /*<<< orphan*/  center; } ;
struct TYPE_10__ {int /*<<< orphan*/  numreachabilityareas; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  CACHETYPE_AREA ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__ aasworld ; 

aas_routingcache_t *FUNC7(int clusternum, int areanum, int travelflags)
{
	int clusterareanum;
	aas_routingcache_t *cache, *clustercache;

	//number of the area in the cluster
	clusterareanum = FUNC1(clusternum, areanum);
	//pointer to the cache for the area in the cluster
	clustercache = aasworld.clusterareacache[clusternum][clusterareanum];
	//find the cache without undesired travel flags
	for (cache = clustercache; cache; cache = cache->next)
	{
		//if there aren't used any undesired travel types for the cache
		if (cache->travelflags == travelflags) break;
	} //end for
	//if there was no cache
	if (!cache)
	{
		cache = FUNC0(aasworld.clusters[clusternum].numreachabilityareas);
		cache->cluster = clusternum;
		cache->areanum = areanum;
		FUNC6(aasworld.areas[areanum].center, cache->origin);
		cache->starttraveltime = 1;
		cache->travelflags = travelflags;
		cache->prev = NULL;
		cache->next = clustercache;
		if (clustercache) clustercache->prev = cache;
		aasworld.clusterareacache[clusternum][clusterareanum] = cache;
		FUNC5(cache);
	} //end if
	else
	{
		FUNC4(cache);
	} //end else
	//the cache has been accessed
	cache->time = FUNC3();
	cache->type = CACHETYPE_AREA;
	FUNC2(cache);
	return cache;
}