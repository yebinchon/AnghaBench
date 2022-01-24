#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 (char*,char*) ; 
 int max_routingcachesize ; 
 scalar_t__ numareacacheupdates ; 
 scalar_t__ numportalcacheupdates ; 
 scalar_t__ routingcachesize ; 

void FUNC11(void)
{
	FUNC8();
	//
	FUNC2();
	//initialize the routing update fields
	FUNC7();
	//create reversed reachability links used by the routing update algorithm
	FUNC1();
	//initialize the cluster cache
	FUNC3();
	//initialize portal cache
	FUNC4();
	//initialize the area travel times
	FUNC0();
	//calculate the maximum travel times through portals
	FUNC5();
	//get the areas reachabilities go through
	FUNC6();
	//
#ifdef ROUTING_DEBUG
	numareacacheupdates = 0;
	numportalcacheupdates = 0;
#endif //ROUTING_DEBUG
	//
	routingcachesize = 0;
	max_routingcachesize = 1024 * (int) FUNC10("max_routingcache", "4096");
	// read any routing cache if available
	FUNC9();
}