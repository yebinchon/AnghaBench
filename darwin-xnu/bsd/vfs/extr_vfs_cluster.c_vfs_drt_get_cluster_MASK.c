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
typedef  scalar_t__ u_int64_t ;
typedef  int u_int32_t ;
typedef  int u_int ;
struct vfs_drt_clustermap {int scm_modulus; int scm_lastclean; int scm_buckets; int /*<<< orphan*/  scm_iskips; } ;
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/  kern_return_t ;

/* Variables and functions */
 int DRT_BITVECTOR_PAGES ; 
 int /*<<< orphan*/  DRT_DEBUG_RETCLUSTER ; 
 int /*<<< orphan*/  DRT_DEBUG_SCMDATA ; 
 int FUNC0 (struct vfs_drt_clustermap*,scalar_t__) ; 
 scalar_t__ FUNC1 (struct vfs_drt_clustermap*,int) ; 
 scalar_t__ FUNC2 (struct vfs_drt_clustermap*,int) ; 
 scalar_t__ FUNC3 (struct vfs_drt_clustermap*,int,int) ; 
 scalar_t__ FUNC4 (struct vfs_drt_clustermap*,int) ; 
 int /*<<< orphan*/  KERN_FAILURE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC5 (char*,struct vfs_drt_clustermap*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (void**,scalar_t__,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct vfs_drt_clustermap*) ; 
 int /*<<< orphan*/  FUNC8 (struct vfs_drt_clustermap*,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static kern_return_t
FUNC9(void **cmapp, off_t *offsetp, u_int *lengthp)
{
	struct vfs_drt_clustermap *cmap;
	u_int64_t	offset;
	u_int		length;
	u_int32_t	j;
	int		index, i, fs, ls;

	/* sanity */
	if ((cmapp == NULL) || (*cmapp == NULL))
		return(KERN_FAILURE);
	cmap = *cmapp;

	/* walk the hashtable */
	for (offset = 0, j = 0; j < cmap->scm_modulus; offset += (DRT_BITVECTOR_PAGES * PAGE_SIZE), j++) {
	        index = FUNC0(cmap, offset);

	        if (FUNC4(cmap, index) || (FUNC2(cmap, index) == 0))
			continue;

		/* scan the bitfield for a string of bits */
		fs = -1;

		for (i = 0; i < DRT_BITVECTOR_PAGES; i++) {
		        if (FUNC3(cmap, index, i)) {
			        fs = i;
				break;
			}
		}
		if (fs == -1) {
		        /*  didn't find any bits set */
		        FUNC5("vfs_drt: entry summary count > 0 but no bits set in map, cmap = %p, index = %d, count = %lld",
			      cmap, index, FUNC2(cmap, index));
		}
		for (ls = 0; i < DRT_BITVECTOR_PAGES; i++, ls++) {
			if (!FUNC3(cmap, index, i))
			        break;
		}
		
		/* compute offset and length, mark pages clean */
		offset = FUNC1(cmap, index) + (PAGE_SIZE * fs);
		length = ls * PAGE_SIZE;
		FUNC6(cmapp, offset, length, NULL, 0);
		cmap->scm_lastclean = index;

		/* return successful */
		*offsetp = (off_t)offset;
		*lengthp = length;

		FUNC8(cmap, DRT_DEBUG_RETCLUSTER, (int)offset, (int)length, 0, 0);
		return(KERN_SUCCESS);
	}
	/*
	 * We didn't find anything... hashtable is empty
	 * emit stats into trace buffer and
	 * then free it
	 */
	FUNC8(cmap, DRT_DEBUG_SCMDATA,
		      cmap->scm_modulus,
		      cmap->scm_buckets,
		      cmap->scm_lastclean,
		      cmap->scm_iskips);
	
	FUNC7(cmap);
	*cmapp = NULL;

	return(KERN_FAILURE);
}