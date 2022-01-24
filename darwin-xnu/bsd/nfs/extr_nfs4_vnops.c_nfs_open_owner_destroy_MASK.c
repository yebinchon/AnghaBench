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
struct nfs_open_owner {int /*<<< orphan*/  noo_lock; scalar_t__ noo_cred; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfs_open_owner*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfs_open_grp ; 

void
FUNC3(struct nfs_open_owner *noop)
{
	if (noop->noo_cred)
		FUNC1(&noop->noo_cred);
	FUNC2(&noop->noo_lock, nfs_open_grp);
	FUNC0(noop, M_TEMP);
}