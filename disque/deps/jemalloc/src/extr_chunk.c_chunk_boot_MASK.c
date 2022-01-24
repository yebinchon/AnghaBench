#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned int dwPageSize; scalar_t__ dwAllocationGranularity; } ;
typedef  TYPE_1__ SYSTEM_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int LG_CHUNK_DEFAULT ; 
 unsigned int LG_PAGE ; 
 int LG_SIZEOF_PTR ; 
 int PAGE ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 () ; 
 int chunk_npages ; 
 int /*<<< orphan*/  chunks_rtree ; 
 int /*<<< orphan*/  chunks_rtree_node_alloc ; 
 int chunksize ; 
 int chunksize_mask ; 
 scalar_t__ have_dss ; 
 int FUNC4 (int) ; 
 int opt_lg_chunk ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

bool
FUNC6(void)
{
#ifdef _WIN32
	SYSTEM_INFO info;
	GetSystemInfo(&info);

	/*
	 * Verify actual page size is equal to or an integral multiple of
	 * configured page size.
	 */
	if (info.dwPageSize & ((1U << LG_PAGE) - 1))
		return (true);

	/*
	 * Configure chunksize (if not set) to match granularity (usually 64K),
	 * so pages_map will always take fast path.
	 */
	if (!opt_lg_chunk) {
		opt_lg_chunk = jemalloc_ffs((int)info.dwAllocationGranularity)
		    - 1;
	}
#else
	if (!opt_lg_chunk)
		opt_lg_chunk = LG_CHUNK_DEFAULT;
#endif

	/* Set variables according to the value of opt_lg_chunk. */
	chunksize = (FUNC1(1) << opt_lg_chunk);
	FUNC2(chunksize >= PAGE);
	chunksize_mask = chunksize - 1;
	chunk_npages = (chunksize >> LG_PAGE);

	if (have_dss && FUNC3())
		return (true);
	if (FUNC5(&chunks_rtree, (FUNC1(1) << (LG_SIZEOF_PTR+3)) -
	    opt_lg_chunk, chunks_rtree_node_alloc, NULL))
		return (true);

	return (false);
}