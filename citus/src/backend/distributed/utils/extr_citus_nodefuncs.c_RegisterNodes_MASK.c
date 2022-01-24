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
 int /*<<< orphan*/ * CitusNodeTagNamesD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * nodeMethods ; 

void
FUNC3(void)
{
	int off;

	FUNC1(FUNC2(nodeMethods) == FUNC2(CitusNodeTagNamesD),
					 "number of node methods and names do not match");

	for (off = 0; off < FUNC2(nodeMethods); off++)
	{
		FUNC0(&nodeMethods[off]);
	}
}