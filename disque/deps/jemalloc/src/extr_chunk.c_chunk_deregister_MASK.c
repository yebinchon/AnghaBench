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
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  chunks_rtree ; 
 size_t chunksize ; 
 scalar_t__ config_prof ; 
 int /*<<< orphan*/  curchunks ; 
 size_t FUNC3 (int /*<<< orphan*/  const*) ; 
 scalar_t__ opt_prof ; 
 int FUNC4 (int /*<<< orphan*/ *,uintptr_t,int /*<<< orphan*/ *) ; 

void
FUNC5(const void *chunk, const extent_node_t *node)
{
	bool err;

	err = FUNC4(&chunks_rtree, (uintptr_t)chunk, NULL);
	FUNC0(!err);
	if (config_prof && opt_prof) {
		size_t size = FUNC3(node);
		size_t nsub = (size == 0) ? 1 : size / chunksize;
		FUNC0(FUNC1(&curchunks) >= nsub);
		FUNC2(&curchunks, nsub);
	}
}