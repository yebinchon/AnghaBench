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
struct ifnet {int /*<<< orphan*/  if_ref_lock; int /*<<< orphan*/  if_refio; } ;

/* Variables and functions */
 int FUNC0 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int
FUNC3(struct ifnet *ifp, int refio)
{
	int ret;

	FUNC1(&ifp->if_ref_lock);
	if ((ret = FUNC0(ifp))) {
		if (refio > 0)
			ifp->if_refio++;
	}
	FUNC2(&ifp->if_ref_lock);

	return (ret);
}