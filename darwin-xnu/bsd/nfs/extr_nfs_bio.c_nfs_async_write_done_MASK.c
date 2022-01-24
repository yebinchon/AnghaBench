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
struct nfsmount {scalar_t__ nm_asyncwrites; int /*<<< orphan*/  nm_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ nfs_max_async_writes ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 

void
FUNC3(struct nfsmount *nmp)
{
	if (nmp->nm_asyncwrites <= 0)
		return;
	FUNC0(&nmp->nm_lock);
	if (nmp->nm_asyncwrites-- >= nfs_max_async_writes)
		FUNC2(&nmp->nm_asyncwrites);
	FUNC1(&nmp->nm_lock);
}