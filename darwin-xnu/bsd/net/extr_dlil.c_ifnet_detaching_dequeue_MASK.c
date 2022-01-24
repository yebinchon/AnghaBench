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
struct ifnet {TYPE_1__ if_detaching_link; } ;

/* Variables and functions */
 struct ifnet* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct ifnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  if_detaching_link ; 
 scalar_t__ ifnet_detaching_cnt ; 
 int /*<<< orphan*/  ifnet_detaching_head ; 

__attribute__((used)) static struct ifnet *
FUNC4(void)
{
	struct ifnet *ifp;

	FUNC3();

	ifp = FUNC0(&ifnet_detaching_head);
	FUNC2(ifnet_detaching_cnt != 0 || ifp == NULL);
	if (ifp != NULL) {
		FUNC2(ifnet_detaching_cnt != 0);
		--ifnet_detaching_cnt;
		FUNC1(&ifnet_detaching_head, ifp, if_detaching_link);
		ifp->if_detaching_link.tqe_next = NULL;
		ifp->if_detaching_link.tqe_prev = NULL;
	}
	return (ifp);
}