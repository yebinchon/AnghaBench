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
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int /*<<< orphan*/  u_int64_t ;
typedef  int u_int32_t ;
struct vfs_drt_clustermap {int scm_modulus; scalar_t__ scm_iskips; scalar_t__ scm_lastclean; scalar_t__ scm_buckets; int /*<<< orphan*/  scm_magic; } ;
typedef  scalar_t__ kern_return_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vfs_drt_clustermap*,int) ; 
 int /*<<< orphan*/  DRT_DEBUG_ALLOC ; 
 int /*<<< orphan*/  DRT_DEBUG_SCMDATA ; 
 int /*<<< orphan*/  FUNC1 (struct vfs_drt_clustermap*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct vfs_drt_clustermap*,int,struct vfs_drt_clustermap*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct vfs_drt_clustermap*,int) ; 
 scalar_t__ FUNC4 (struct vfs_drt_clustermap*,int) ; 
 scalar_t__ DRT_HASH_LARGE_MEMORY_REQUIRED ; 
 int DRT_HASH_LARGE_MODULUS ; 
 int DRT_HASH_SMALL_MODULUS ; 
 scalar_t__ FUNC5 (struct vfs_drt_clustermap*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct vfs_drt_clustermap*,int) ; 
 int /*<<< orphan*/  DRT_LARGE_ALLOCATION ; 
 int /*<<< orphan*/  DRT_SCM_MAGIC ; 
 int /*<<< orphan*/  DRT_SMALL_ALLOCATION ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  VM_KERN_MEMORY_FILE ; 
 int /*<<< orphan*/  kernel_map ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ max_mem ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (struct vfs_drt_clustermap*) ; 
 scalar_t__ FUNC10 (struct vfs_drt_clustermap**,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct vfs_drt_clustermap*,int /*<<< orphan*/ ,int,scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static kern_return_t
FUNC12(struct vfs_drt_clustermap **cmapp)
{
	struct vfs_drt_clustermap *cmap, *ocmap;
	kern_return_t	kret;
	u_int64_t	offset;
	u_int32_t	i;
	int		nsize, active_buckets, index, copycount;

	ocmap = NULL;
	if (cmapp != NULL)
		ocmap = *cmapp;
	
	/*
	 * Decide on the size of the new map.
	 */
	if (ocmap == NULL) {
		nsize = DRT_HASH_SMALL_MODULUS;
	} else {
		/* count the number of active buckets in the old map */
		active_buckets = 0;
		for (i = 0; i < ocmap->scm_modulus; i++) {
			if (!FUNC5(ocmap, i) &&
			    (FUNC4(ocmap, i) != 0))
				active_buckets++;
		}
		/*
		 * If we're currently using the small allocation, check to
		 * see whether we should grow to the large one.
		 */
		if (ocmap->scm_modulus == DRT_HASH_SMALL_MODULUS) {
			/* 
			 * If the ring is nearly full and we are allowed to
			 * use the large modulus, upgrade.
			 */
			if ((active_buckets > (DRT_HASH_SMALL_MODULUS - 5)) &&
			    (max_mem >= DRT_HASH_LARGE_MEMORY_REQUIRED)) {
				nsize = DRT_HASH_LARGE_MODULUS;
			} else {
				nsize = DRT_HASH_SMALL_MODULUS;
			}
		} else {
			/* already using the large modulus */
			nsize = DRT_HASH_LARGE_MODULUS;
			/*
			 * If the ring is completely full, there's
			 * nothing useful for us to do.  Behave as
			 * though we had compacted into the new
			 * array and return.
			 */
			if (active_buckets >= DRT_HASH_LARGE_MODULUS)
				return(KERN_SUCCESS);
		}
	}

	/*
	 * Allocate and initialise the new map.
	 */

	kret = FUNC7(kernel_map, (vm_offset_t *)&cmap,
	    (nsize == DRT_HASH_SMALL_MODULUS) ? DRT_SMALL_ALLOCATION : DRT_LARGE_ALLOCATION, VM_KERN_MEMORY_FILE);
	if (kret != KERN_SUCCESS)
		return(kret);
	cmap->scm_magic = DRT_SCM_MAGIC;
	cmap->scm_modulus = nsize;
	cmap->scm_buckets = 0;
	cmap->scm_lastclean = 0;
	cmap->scm_iskips = 0;
	for (i = 0; i < cmap->scm_modulus; i++) {
	        FUNC1(cmap, i);
		FUNC6(cmap, i);
		FUNC0(cmap, i);
	}

	/*
	 * If there's an old map, re-hash entries from it into the new map.
	 */
	copycount = 0;
	if (ocmap != NULL) {
		for (i = 0; i < ocmap->scm_modulus; i++) {
			/* skip empty buckets */
			if (FUNC5(ocmap, i) ||
			    (FUNC4(ocmap, i) == 0))
				continue;
			/* get new index */
			offset = FUNC3(ocmap, i);
			kret = FUNC10(&cmap, offset, &index, 1);
			if (kret != KERN_SUCCESS) {
				/* XXX need to bail out gracefully here */
				FUNC8("vfs_drt: new cluster map mysteriously too small");
				index = 0;
			}
			/* copy */
			FUNC2(ocmap, i, cmap, index);
			copycount++;
		}
	}

	/* log what we've done */
	FUNC11(cmap, DRT_DEBUG_ALLOC, copycount, 0, 0, 0);
	
	/*
	 * It's important to ensure that *cmapp always points to 
	 * a valid map, so we must overwrite it before freeing
	 * the old map.
	 */
	*cmapp = cmap;
	if (ocmap != NULL) {
		/* emit stats into trace buffer */
		FUNC11(ocmap, DRT_DEBUG_SCMDATA,
			      ocmap->scm_modulus,
			      ocmap->scm_buckets,
			      ocmap->scm_lastclean,
			      ocmap->scm_iskips);

		FUNC9(ocmap);
	}
	return(KERN_SUCCESS);
}