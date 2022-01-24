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
typedef  int /*<<< orphan*/  vfs_context_t ;
struct nfsmount {scalar_t__ nm_vers; } ;
struct componentname {int dummy; } ;
typedef  int /*<<< orphan*/  nfsnode_t ;

/* Variables and functions */
 struct nfsmount* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ NFS_VER2 ; 
 scalar_t__ FUNC2 (struct nfsmount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RDIRPLUS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct componentname*,int /*<<< orphan*/ ,int) ; 

void
FUNC5(nfsnode_t dnp, nfsnode_t np, struct componentname *cnp, vfs_context_t ctx)
{
	struct nfsmount *nmp = FUNC0(dnp);

	FUNC3(FUNC1(np));
	if (nmp && (nmp->nm_vers > NFS_VER2) && FUNC2(nmp, RDIRPLUS))
		FUNC4(dnp, NULL, cnp, ctx, 1);
}