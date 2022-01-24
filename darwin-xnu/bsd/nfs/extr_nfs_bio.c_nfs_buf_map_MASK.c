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
struct nfsbuf {scalar_t__ nb_data; int /*<<< orphan*/  nb_flags; int /*<<< orphan*/  nb_pagelist; } ;
typedef  scalar_t__ kern_return_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int,struct nfsbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (struct nfsbuf*) ; 
 int /*<<< orphan*/  NB_PAGELIST ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC5(struct nfsbuf *bp)
{
	kern_return_t kret;

	if (bp->nb_data)
		return (0);
	if (!FUNC1(bp->nb_flags, NB_PAGELIST))
		return (EINVAL);

	kret = FUNC4(bp->nb_pagelist, (vm_offset_t *)&(bp->nb_data));
	if (kret != KERN_SUCCESS)
		FUNC3("nfs_buf_map: ubc_upl_map() failed with (%d)", kret);
	if (bp->nb_data == 0)
		FUNC3("ubc_upl_map mapped 0");
	FUNC0(540, bp, bp->nb_flags, FUNC2(bp), bp->nb_data);
	return (0);
}