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
struct ifaddr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * tqe_prev; int /*<<< orphan*/ * tqe_next; } ;
struct dadq {int dad_attached; TYPE_1__ dad_list; struct ifaddr* dad_ifa; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dadq*) ; 
 int /*<<< orphan*/  FUNC1 (struct dadq*) ; 
 int /*<<< orphan*/  FUNC2 (struct dadq*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct dadq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  dad6_mutex ; 
 int /*<<< orphan*/  dad_list ; 
 int /*<<< orphan*/  dadq ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct dadq *dp, struct ifaddr *ifa)
{
	int detached;

	FUNC5(dad6_mutex);
	FUNC0(dp);
	if ((detached = dp->dad_attached)) {
		FUNC4(dp->dad_ifa == ifa);
		FUNC3(&dadq, (struct dadq *)dp, dad_list);
		dp->dad_list.tqe_next = NULL;
		dp->dad_list.tqe_prev = NULL;
		dp->dad_attached = 0;
	}
	FUNC2(dp);
	FUNC6(dad6_mutex);
	if (detached) {
		FUNC1(dp);		/* drop dadq_head reference */
	}
}