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
struct TYPE_2__ {int /*<<< orphan*/ * tqe_prev; int /*<<< orphan*/ * tqe_next; } ;
struct ifnet {TYPE_1__ if_ordered_link; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct ifnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ if_ordered_count ; 
 int /*<<< orphan*/  if_ordered_link ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  ifnet_ordered_head ; 

void
FUNC3(struct ifnet *ifp)
{
	FUNC2();

	// Remove from list
	FUNC0(&ifnet_ordered_head, ifp, if_ordered_link);
	ifp->if_ordered_link.tqe_next = NULL;
	ifp->if_ordered_link.tqe_prev = NULL;

	// Update ordered count
	FUNC1(if_ordered_count > 0);
	if_ordered_count--;
}