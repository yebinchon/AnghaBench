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
struct nfs_lock_owner {int /*<<< orphan*/  nlo_lock; int /*<<< orphan*/ * nlo_open_owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfs_lock_owner*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfs_open_grp ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(struct nfs_lock_owner *nlop)
{
	if (nlop->nlo_open_owner) {
		FUNC2(nlop->nlo_open_owner);
		nlop->nlo_open_owner = NULL;
	}
	FUNC1(&nlop->nlo_lock, nfs_open_grp);
	FUNC0(nlop, M_TEMP);
}