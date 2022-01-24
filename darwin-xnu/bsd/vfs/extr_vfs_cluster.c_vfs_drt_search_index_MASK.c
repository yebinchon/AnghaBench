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
struct vfs_drt_clustermap {scalar_t__ scm_modulus; } ;
typedef  int /*<<< orphan*/  kern_return_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (struct vfs_drt_clustermap*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct vfs_drt_clustermap*,int) ; 
 int FUNC3 (struct vfs_drt_clustermap*,int) ; 
 scalar_t__ FUNC4 (struct vfs_drt_clustermap*,int) ; 
 int /*<<< orphan*/  KERN_FAILURE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 

__attribute__((used)) static kern_return_t
FUNC5(struct vfs_drt_clustermap *cmap, u_int64_t offset, int *indexp)
{
	int		index;
	u_int32_t	i;

	offset = FUNC0(offset);
	index = FUNC1(cmap, offset);

	/* traverse the hashtable */
	for (i = 0; i < cmap->scm_modulus; i++) {

		/*
		 * If the slot is vacant, we can stop.
		 */
		if (FUNC4(cmap, index))
			break;

		/*
		 * If the address matches our offset, we have success.
		 */
		if (FUNC2(cmap, index) == offset) {
			*indexp = index;
			return(KERN_SUCCESS);
		}

		/*
		 * Move to the next slot, try again.
		 */
		index = FUNC3(cmap, index);
	}
	/*
	 * It's not there.
	 */
	return(KERN_FAILURE);
}