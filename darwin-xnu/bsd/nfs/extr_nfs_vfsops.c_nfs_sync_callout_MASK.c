#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vnode_t ;
struct nfs_sync_cargs {int error; int /*<<< orphan*/  ctx; int /*<<< orphan*/  waitfor; } ;
typedef  TYPE_1__* nfsnode_t ;
struct TYPE_4__ {int n_flag; scalar_t__ n_wrbusy; int n_bflag; int /*<<< orphan*/  n_dirtyblkhd; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int NBFLUSHINPROG ; 
 int NBINVALINPROG ; 
 int NREVOKE ; 
 int /*<<< orphan*/  REVOKEALL ; 
 int VNODE_RETURNED ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC5(vnode_t vp, void *arg)
{
	struct nfs_sync_cargs *cargs = (struct nfs_sync_cargs*)arg;
	nfsnode_t np = FUNC1(vp);
	int error;

	if (np->n_flag & NREVOKE) {
		FUNC4(vp, REVOKEALL, cargs->ctx);
		return (VNODE_RETURNED);
	}

	if (FUNC0(&np->n_dirtyblkhd))
		return (VNODE_RETURNED);
	if (np->n_wrbusy > 0)
		return (VNODE_RETURNED);
	if (np->n_bflag & (NBFLUSHINPROG|NBINVALINPROG))
		return (VNODE_RETURNED);

	error = FUNC2(np, cargs->waitfor, FUNC3(cargs->ctx), 0);
	if (error)
		cargs->error = error;

	return (VNODE_RETURNED);
}