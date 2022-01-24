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
struct ifnet {scalar_t__ if_refio; int if_refflags; int /*<<< orphan*/  if_ref_lock; } ;

/* Variables and functions */
 int IFRF_ATTACHED ; 
 int IFRF_DETACHING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 

void
FUNC4(struct ifnet *ifp)
{
	FUNC1(&ifp->if_ref_lock);
	FUNC0(ifp->if_refio > 0);
	FUNC0(ifp->if_refflags & (IFRF_ATTACHED | IFRF_DETACHING));
	ifp->if_refio--;

	/*
	 * if there are no more outstanding io references, wakeup the
	 * ifnet_detach thread if detaching flag is set.
	 */
	if (ifp->if_refio == 0 && (ifp->if_refflags & IFRF_DETACHING))
		FUNC3(&(ifp->if_refio));

	FUNC2(&ifp->if_ref_lock);
}