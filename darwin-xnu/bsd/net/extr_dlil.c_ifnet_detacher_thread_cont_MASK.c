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
struct ifnet {int dummy; } ;

/* Variables and functions */
 scalar_t__ PZERO ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  dlil_ifnet_lock ; 
 int /*<<< orphan*/  ifnet_delayed_run ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*) ; 
 scalar_t__ ifnet_detaching_cnt ; 
 struct ifnet* FUNC6 () ; 
 int /*<<< orphan*/  ifnet_detaching_head ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,char*,int /*<<< orphan*/ ,int (*) (int)) ; 

__attribute__((used)) static int
FUNC8(int err)
{
#pragma unused(err)
	struct ifnet *ifp;

	for (;;) {
		FUNC3();
		while (ifnet_detaching_cnt == 0) {
			(void) FUNC7(&ifnet_delayed_run, &dlil_ifnet_lock,
			    (PZERO - 1), "ifnet_detacher_cont", 0,
			    ifnet_detacher_thread_cont);
			/* NOTREACHED */
		}

		FUNC1(FUNC0(&ifnet_detaching_head) != NULL);

		/* Take care of detaching ifnet */
		ifp = FUNC6();
		if (ifp != NULL) {
			FUNC4();
			FUNC5(ifp);
			FUNC2();
		}
	}
}