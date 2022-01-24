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
struct nfsmount {int nm_ref; int nm_state; int /*<<< orphan*/  nm_lock; } ;

/* Variables and functions */
 int NFSSTA_MOUNT_DRAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 

void
FUNC4(struct nfsmount *nmp)
{
	int wup = 0;

	FUNC0(&nmp->nm_lock);
	if (nmp->nm_ref < 1)
		FUNC2("nfs zombie mount underflow\n");
	nmp->nm_ref--;
	if (nmp->nm_ref == 0)
		wup = nmp->nm_state & NFSSTA_MOUNT_DRAIN;
	FUNC1(&nmp->nm_lock);
	if (wup)
		FUNC3(&nmp->nm_ref);
}