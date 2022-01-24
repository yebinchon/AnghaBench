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
struct TYPE_2__ {int /*<<< orphan*/  nodes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ numladdersubdivisions ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 TYPE_1__ tmpaasworld ; 

void FUNC3(void)
{
	FUNC1("AAS_LadderSubdivision\r\n");
	numladdersubdivisions = 0;
	FUNC2("%6i ladder subdivisions", numladdersubdivisions);
	//start with the head node
	FUNC0(tmpaasworld.nodes);
	//
	FUNC2("\n");
	FUNC1("%6i ladder subdivisions\r\n", numladdersubdivisions);
}