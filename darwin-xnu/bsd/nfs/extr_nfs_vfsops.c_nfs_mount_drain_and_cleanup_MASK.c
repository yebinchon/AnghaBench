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
struct nfsmount {scalar_t__ nm_ref; int /*<<< orphan*/  nm_lock; int /*<<< orphan*/  nm_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFSSTA_MOUNT_DRAIN ; 
 scalar_t__ PZERO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ *,scalar_t__,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct nfsmount*) ; 

void
FUNC5(struct nfsmount *nmp)
{
	FUNC1(&nmp->nm_lock);
	nmp->nm_state |= NFSSTA_MOUNT_DRAIN;
	while (nmp->nm_ref > 0) {
		FUNC3(&nmp->nm_ref, &nmp->nm_lock, PZERO-1, "nfs_mount_drain", NULL);
	}
	FUNC0(nmp->nm_ref == 0);
	FUNC2(&nmp->nm_lock);
	FUNC4(nmp);
}