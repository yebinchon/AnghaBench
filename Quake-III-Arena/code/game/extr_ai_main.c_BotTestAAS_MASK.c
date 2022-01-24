#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_6__ {int /*<<< orphan*/  cluster; } ;
typedef  TYPE_1__ aas_areainfo_t ;
struct TYPE_7__ {scalar_t__ integer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PRT_MESSAGE ; 
 TYPE_2__ bot_testclusters ; 
 TYPE_2__ bot_testsolid ; 
 int /*<<< orphan*/  FUNC2 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

void FUNC5(vec3_t origin) {
	int areanum;
	aas_areainfo_t info;

	FUNC4(&bot_testsolid);
	FUNC4(&bot_testclusters);
	if (bot_testsolid.integer) {
		if (!FUNC3()) return;
		areanum = FUNC1(origin);
		if (areanum) FUNC0(PRT_MESSAGE, "\remtpy area");
		else FUNC0(PRT_MESSAGE, "\r^1SOLID area");
	}
	else if (bot_testclusters.integer) {
		if (!FUNC3()) return;
		areanum = FUNC1(origin);
		if (!areanum)
			FUNC0(PRT_MESSAGE, "\r^1Solid!                              ");
		else {
			FUNC2(areanum, &info);
			FUNC0(PRT_MESSAGE, "\rarea %d, cluster %d       ", areanum, info.cluster);
		}
	}
}