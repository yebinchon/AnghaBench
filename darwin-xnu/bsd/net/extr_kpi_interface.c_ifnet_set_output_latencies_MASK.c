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
struct if_latencies {scalar_t__ eff_lt; scalar_t__ max_lt; } ;
struct ifclassq {int dummy; } ;
struct ifnet {struct if_latencies if_output_lt; struct ifclassq if_snd; } ;
typedef  int /*<<< orphan*/  errno_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  CLASSQ_EV_LINK_LATENCY ; 
 int /*<<< orphan*/  FUNC0 (struct ifclassq*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifclassq*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifclassq*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct ifclassq*,int /*<<< orphan*/ ) ; 

errno_t
FUNC5(struct ifnet *ifp, struct if_latencies *lt,
    boolean_t locked)
{
	struct if_latencies old_lt;
	struct ifclassq *ifq;

	FUNC3(ifp != NULL && lt != NULL);

	ifq = &ifp->if_snd;
	if (!locked)
		FUNC0(ifq);
	FUNC1(ifq);

	old_lt = ifp->if_output_lt;
	if (lt->eff_lt != 0)
		ifp->if_output_lt.eff_lt = lt->eff_lt;
	if (lt->max_lt != 0)
		ifp->if_output_lt.max_lt = lt->max_lt;
	if (ifp->if_output_lt.eff_lt > ifp->if_output_lt.max_lt)
		ifp->if_output_lt.max_lt = ifp->if_output_lt.eff_lt;
	else if (ifp->if_output_lt.eff_lt == 0)
		ifp->if_output_lt.eff_lt = ifp->if_output_lt.max_lt;

	/* Adjust queue parameters if needed */
	if (old_lt.eff_lt != ifp->if_output_lt.eff_lt ||
	    old_lt.max_lt != ifp->if_output_lt.max_lt)
		FUNC4(ifq, CLASSQ_EV_LINK_LATENCY);

	if (!locked)
		FUNC2(ifq);

	return (0);
}