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
struct quakefile_s {int /*<<< orphan*/  filename; int /*<<< orphan*/ * pakfile; } ;
struct TYPE_2__ {scalar_t__ numclusters; scalar_t__ reachabilitysize; int /*<<< orphan*/  bspchecksum; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (float) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 TYPE_1__ aasworld ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  worldmodel ; 

void FUNC13(struct quakefile_s *qf)
{
	float time;

	FUNC11("loading collision map...\n");
	//
	if (!qf->pakfile[0]) FUNC12(qf->pakfile, qf->filename);
	//load the map
	FUNC10((char *) qf, qfalse, &aasworld.bspchecksum);
	//get a handle to the world model
	worldmodel = FUNC9(0);		// 0 = world, 1 + are bmodels
	//initialize bot import structure
	FUNC3();
	//load the BSP entity string
	FUNC7();
	//init physics settings
	FUNC6();
	//initialize AAS link heap
	FUNC1();
	//initialize the AAS linked entities for the new map
	FUNC2();
	//reset all reachabilities and clusters
	aasworld.reachabilitysize = 0;
	aasworld.numclusters = 0;
	//set all view portals as cluster portals in case we re-calculate the reachabilities and clusters (with -reach)
	FUNC8();
	//calculate reachabilities
	FUNC5();
	time = 0;
	while(FUNC0(time)) time++;
	//calculate clusters
	FUNC4();
}