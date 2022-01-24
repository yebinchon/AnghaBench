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
typedef  int u_int64_t ;
typedef  int u_int ;
struct vfs_drt_clustermap {int dummy; } ;
typedef  scalar_t__ kern_return_t ;

/* Variables and functions */
 int DBG_FUNC_END ; 
 int DBG_FUNC_START ; 
 int FUNC0 (int) ; 
 int DRT_BITVECTOR_PAGES ; 
 int DRT_DEBUG_MARK ; 
 int /*<<< orphan*/  FUNC1 (struct vfs_drt_clustermap*,int,int) ; 
 int FUNC2 (struct vfs_drt_clustermap*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct vfs_drt_clustermap*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct vfs_drt_clustermap*,int,int) ; 
 scalar_t__ FUNC5 (struct vfs_drt_clustermap*,int,int) ; 
 scalar_t__ KERN_SUCCESS ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,struct vfs_drt_clustermap*,int,int) ; 
 scalar_t__ FUNC9 (struct vfs_drt_clustermap**) ; 
 scalar_t__ FUNC10 (struct vfs_drt_clustermap**,int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct vfs_drt_clustermap*,int,int,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static kern_return_t
FUNC12(
	void		**private,
	u_int64_t	offset,
	u_int    	length,
	u_int		*setcountp,
	int		dirty)
{
	struct vfs_drt_clustermap *cmap, **cmapp;
	kern_return_t	kret;
	int		i, index, pgoff, pgcount, setcount, ecount;

	cmapp = (struct vfs_drt_clustermap **)private;
	cmap = *cmapp;

	FUNC11(cmap, DRT_DEBUG_MARK | DBG_FUNC_START, (int)offset, (int)length, dirty, 0);

	if (setcountp != NULL)
	        *setcountp = 0;
	
	/* allocate a cluster map if we don't already have one */
	if (cmap == NULL) {
		/* no cluster map, nothing to clean */
		if (!dirty) {
			FUNC11(cmap, DRT_DEBUG_MARK | DBG_FUNC_END, 1, 0, 0, 0);
			return(KERN_SUCCESS);
		}
		kret = FUNC9(cmapp);
		if (kret != KERN_SUCCESS) {
			FUNC11(cmap, DRT_DEBUG_MARK | DBG_FUNC_END, 2, 0, 0, 0);
			return(kret);
		}
	}
	setcount = 0;

	/*
	 * Iterate over the length of the region.
	 */
	while (length > 0) {
		/*
		 * Get the hashtable index for this offset.
		 *
		 * XXX this will add blank entries if we are clearing a range
		 * that hasn't been dirtied.
		 */
		kret = FUNC10(cmapp, offset, &index, 0);
		cmap = *cmapp;	/* may have changed! */
		/* this may be a partial-success return */
		if (kret != KERN_SUCCESS) {
		        if (setcountp != NULL)
			        *setcountp = setcount;
			FUNC11(cmap, DRT_DEBUG_MARK | DBG_FUNC_END, 3, (int)length, 0, 0);

			return(kret);
		}

		/*
		 * Work out how many pages we're modifying in this
		 * hashtable entry.
		 */
		pgoff = (offset - FUNC0(offset)) / PAGE_SIZE;
		pgcount = FUNC7((length / PAGE_SIZE), (DRT_BITVECTOR_PAGES - pgoff));

		/*
		 * Iterate over pages, dirty/clearing as we go.
		 */
		ecount = FUNC2(cmap, index);
		for (i = 0; i < pgcount; i++) {
			if (dirty) {
				if (!FUNC5(cmap, index, pgoff + i)) {
				        if (ecount >= DRT_BITVECTOR_PAGES)
					        FUNC8("ecount >= DRT_BITVECTOR_PAGES, cmap = %p, index = %d, bit = %d", cmap, index, pgoff+i);
					FUNC3(cmap, index, pgoff + i);
					ecount++;
					setcount++;
				}
			} else {
				if (FUNC5(cmap, index, pgoff + i)) {
				        if (ecount <= 0)
					        FUNC8("ecount <= 0, cmap = %p, index = %d, bit = %d", cmap, index, pgoff+i);
				        FUNC6(ecount > 0);
					FUNC1(cmap, index, pgoff + i);
					ecount--;
					setcount++;
				}
			}
		}
		FUNC4(cmap, index, ecount);

		offset += pgcount * PAGE_SIZE;
		length -= pgcount * PAGE_SIZE;
	}
	if (setcountp != NULL)
		*setcountp = setcount;

	FUNC11(cmap, DRT_DEBUG_MARK | DBG_FUNC_END, 0, setcount, 0, 0);

	return(KERN_SUCCESS);
}