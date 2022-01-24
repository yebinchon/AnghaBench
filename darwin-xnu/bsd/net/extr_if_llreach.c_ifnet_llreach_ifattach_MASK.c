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
struct ifnet {int /*<<< orphan*/  if_llreach_lock; int /*<<< orphan*/  if_ll_srcs; } ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(struct ifnet *ifp, boolean_t reuse)
{
	FUNC2(&ifp->if_llreach_lock);
	/* Initialize link-layer source tree (if not already) */
	if (!reuse)
		FUNC0(&ifp->if_ll_srcs);
	FUNC1(&ifp->if_llreach_lock);
}