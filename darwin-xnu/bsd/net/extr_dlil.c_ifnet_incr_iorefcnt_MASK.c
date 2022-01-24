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
struct ifnet {scalar_t__ if_refio; int /*<<< orphan*/  if_ref_lock; } ;

/* Variables and functions */
 int FUNC0 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(struct ifnet *ifp)
{
	FUNC2(&ifp->if_ref_lock);
	FUNC1(FUNC0(ifp));
	FUNC1(ifp->if_refio > 0);
	ifp->if_refio++;
	FUNC3(&ifp->if_ref_lock);
}