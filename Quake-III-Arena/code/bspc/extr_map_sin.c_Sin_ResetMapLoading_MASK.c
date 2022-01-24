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
 int MAX_MAPFILE_BRUSHES ; 
 int NODESTACKSIZE ; 
 int /*<<< orphan*/  brushmodelnumbers ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  nodestack ; 
 int /*<<< orphan*/ * nodestackptr ; 
 scalar_t__ nodestacksize ; 

void FUNC1(void)
{
	//reset for map loading from bsp
	FUNC0(nodestack, 0, NODESTACKSIZE * sizeof(int));
	nodestackptr = NULL;
	nodestacksize = 0;
	FUNC0(brushmodelnumbers, 0, MAX_MAPFILE_BRUSHES * sizeof(int));
}