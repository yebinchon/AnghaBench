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
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  MaxIntermediateResult ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

void
FUNC4()
{
	FUNC0(ERROR, (FUNC3("the intermediate result size exceeds "
						   "citus.max_intermediate_result_size (currently %d kB)",
						   MaxIntermediateResult),
					FUNC1("Citus restricts the size of intermediate "
							  "results of complex subqueries and CTEs to "
							  "avoid accidentally pulling large result sets "
							  "into once place."),
					FUNC2("To run the current query, set "
							"citus.max_intermediate_result_size to a higher"
							" value or -1 to disable.")));
}