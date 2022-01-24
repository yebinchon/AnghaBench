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
typedef  int /*<<< orphan*/  extent_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,size_t,size_t) ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  chunks_rtree ; 
 size_t chunksize ; 
 scalar_t__ config_prof ; 
 int /*<<< orphan*/  curchunks ; 
 void const* FUNC4 (int /*<<< orphan*/  const*) ; 
 size_t FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  highchunks ; 
 scalar_t__ opt_prof ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 () ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,uintptr_t,int /*<<< orphan*/  const*) ; 

bool
FUNC9(const void *chunk, const extent_node_t *node)
{

	FUNC0(FUNC4(node) == chunk);

	if (FUNC8(&chunks_rtree, (uintptr_t)chunk, node))
		return (true);
	if (config_prof && opt_prof) {
		size_t size = FUNC5(node);
		size_t nadd = (size == 0) ? 1 : size / chunksize;
		size_t cur = FUNC1(&curchunks, nadd);
		size_t high = FUNC3(&highchunks);
		while (cur > high && FUNC2(&highchunks, high, cur)) {
			/*
			 * Don't refresh cur, because it may have decreased
			 * since this thread lost the highchunks update race.
			 */
			high = FUNC3(&highchunks);
		}
		if (cur > high && FUNC7())
			FUNC6();
	}

	return (false);
}