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
typedef  scalar_t__ u_int32_t ;
struct vfs_drt_clustermap {scalar_t__ scm_modulus; scalar_t__ scm_lastclean; int /*<<< orphan*/  scm_iskips; int /*<<< orphan*/  scm_buckets; } ;
typedef  scalar_t__ kern_return_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct vfs_drt_clustermap*,scalar_t__) ; 
 int /*<<< orphan*/  DRT_DEBUG_INSERT ; 
 scalar_t__ FUNC2 (struct vfs_drt_clustermap*,scalar_t__) ; 
 scalar_t__ FUNC3 (struct vfs_drt_clustermap*,scalar_t__) ; 
 scalar_t__ FUNC4 (struct vfs_drt_clustermap*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct vfs_drt_clustermap*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct vfs_drt_clustermap*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct vfs_drt_clustermap*,scalar_t__) ; 
 scalar_t__ KERN_FAILURE ; 
 scalar_t__ KERN_SUCCESS ; 
 scalar_t__ FUNC8 (struct vfs_drt_clustermap**) ; 
 scalar_t__ FUNC9 (struct vfs_drt_clustermap*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC10 (struct vfs_drt_clustermap*,int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static kern_return_t
FUNC11(struct vfs_drt_clustermap **cmapp, u_int64_t offset, int *indexp, int recursed)
{
	struct vfs_drt_clustermap *cmap;
	kern_return_t	kret;
	u_int32_t	index;
	u_int32_t	i;

	cmap = *cmapp;

	/* look for an existing entry */
	kret = FUNC9(cmap, offset, indexp);
	if (kret == KERN_SUCCESS)
		return(kret);

	/* need to allocate an entry */
	offset = FUNC0(offset);
	index = FUNC2(cmap, offset);

	/* scan from the index forwards looking for a vacant slot */
	for (i = 0; i < cmap->scm_modulus; i++) {
		/* slot vacant? */
		if (FUNC7(cmap, index) || FUNC3(cmap,index) == 0) {
			cmap->scm_buckets++;
			if (index < cmap->scm_lastclean)
				cmap->scm_lastclean = index;
			FUNC5(cmap, index, offset);
			FUNC6(cmap, index, 0);
			FUNC1(cmap, index);
			*indexp = index;
			FUNC10(cmap, DRT_DEBUG_INSERT, (int)offset, i, 0, 0);
			return(KERN_SUCCESS);
		}
		cmap->scm_iskips += i;
		index = FUNC4(cmap, index);
	}

	/*
	 * We haven't found a vacant slot, so the map is full.  If we're not
	 * already recursed, try reallocating/compacting it.
	 */
	if (recursed)
		return(KERN_FAILURE);
	kret = FUNC8(cmapp);
	if (kret == KERN_SUCCESS) {
		/* now try to insert again */
		kret = FUNC11(cmapp, offset, indexp, 1);
	}
	return(kret);
}