#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int travelflags; int cluster; int areanum; int starttraveltime; int /*<<< orphan*/  type; int /*<<< orphan*/  time; struct TYPE_10__* prev; struct TYPE_10__* next; int /*<<< orphan*/  origin; } ;
typedef  TYPE_2__ aas_routingcache_t ;
struct TYPE_11__ {TYPE_2__** portalcache; TYPE_1__* areas; int /*<<< orphan*/  numportals; } ;
struct TYPE_9__ {int /*<<< orphan*/  center; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  CACHETYPE_PORTAL ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__ aasworld ; 

aas_routingcache_t *FUNC6(int clusternum, int areanum, int travelflags)
{
	aas_routingcache_t *cache;

	//find the cached portal routing if existing
	for (cache = aasworld.portalcache[areanum]; cache; cache = cache->next)
	{
		if (cache->travelflags == travelflags) break;
	} //end for
	//if the portal routing isn't cached
	if (!cache)
	{
		cache = FUNC0(aasworld.numportals);
		cache->cluster = clusternum;
		cache->areanum = areanum;
		FUNC5(aasworld.areas[areanum].center, cache->origin);
		cache->starttraveltime = 1;
		cache->travelflags = travelflags;
		//add the cache to the cache list
		cache->prev = NULL;
		cache->next = aasworld.portalcache[areanum];
		if (aasworld.portalcache[areanum]) aasworld.portalcache[areanum]->prev = cache;
		aasworld.portalcache[areanum] = cache;
		//update the cache
		FUNC4(cache);
	} //end if
	else
	{
		FUNC3(cache);
	} //end else
	//the cache has been accessed
	cache->time = FUNC2();
	cache->type = CACHETYPE_PORTAL;
	FUNC1(cache);
	return cache;
}