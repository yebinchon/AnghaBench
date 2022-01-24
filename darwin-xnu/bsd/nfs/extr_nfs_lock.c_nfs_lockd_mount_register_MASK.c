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
struct nfsmount {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct nfsmount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfs_lock_mutex ; 
 int /*<<< orphan*/  nfs_lockd_mount_list ; 
 int /*<<< orphan*/  nfs_lockd_mounts ; 
 int /*<<< orphan*/  nm_ldlink ; 

void
FUNC3(struct nfsmount *nmp)
{
	FUNC1(nfs_lock_mutex);
	FUNC0(&nfs_lockd_mount_list, nmp, nm_ldlink);
	nfs_lockd_mounts++;
	FUNC2(nfs_lock_mutex);
}