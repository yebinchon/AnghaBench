#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct nfsmount {int /*<<< orphan*/  nm_lock; int /*<<< orphan*/  nm_state; } ;
typedef  TYPE_1__* nfsnode_t ;
struct TYPE_8__ {int n_flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFSSTA_REVOKE ; 
 struct nfsmount* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,...) ; 
 int NREVOKE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct nfsmount*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void
FUNC8(nfsnode_t np)
{
	struct nfsmount *nmp;

	/* mark node as needing to be revoked */
	FUNC5(np);
	if (np->n_flag & NREVOKE)  /* already revoked? */
	{
		FUNC1(np, "nfs_revoke_open_state_for_node(): already revoked");
		FUNC6(np);
		return;
	}
	np->n_flag |= NREVOKE;
	FUNC6(np);

	FUNC7(np, 0);
	FUNC1(np, "nfs: state lost for %p 0x%x", np, np->n_flag);

	/* mark mount as needing a revoke scan and have the socket thread do it. */
	if ((nmp = FUNC0(np))) {
		FUNC2(&nmp->nm_lock);
		nmp->nm_state |= NFSSTA_REVOKE;
		FUNC4(nmp);
		FUNC3(&nmp->nm_lock);
	}
}