#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct nfs_open_file {int /*<<< orphan*/  nof_lock; TYPE_1__* nof_owner; } ;
struct TYPE_2__ {int /*<<< orphan*/  noo_lock; int /*<<< orphan*/  noo_opens; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfs_open_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct nfs_open_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nfs_open_grp ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  nof_oolink ; 

void
FUNC6(struct nfs_open_file *nofp)
{
	FUNC3(&nofp->nof_owner->noo_lock);
	FUNC1(&nofp->nof_owner->noo_opens, nofp, nof_oolink);
	FUNC4(&nofp->nof_owner->noo_lock);
	FUNC5(nofp->nof_owner);
	FUNC2(&nofp->nof_lock, nfs_open_grp);
	FUNC0(nofp, M_TEMP);
}