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
typedef  size_t u_int32_t ;
struct tcq_if {int dummy; } ;
struct ifclassq {scalar_t__ ifcq_type; TYPE_1__* ifcq_disc_slots; struct tcq_if* ifcq_disc; } ;
struct if_ifclassq_stats {int /*<<< orphan*/  ifqs_tcq_stats; } ;
struct TYPE_2__ {int /*<<< orphan*/  qid; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct ifclassq*) ; 
 size_t IFCQ_SC_MAX ; 
 scalar_t__ PKTSCHEDT_TCQ ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct tcq_if*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC3(struct ifclassq *ifq, u_int32_t slot,
    struct if_ifclassq_stats *ifqs)
{
	struct tcq_if *tif = ifq->ifcq_disc;

	FUNC0(ifq);
	FUNC1(ifq->ifcq_type == PKTSCHEDT_TCQ);

	if (slot >= IFCQ_SC_MAX)
		return (EINVAL);

	return (FUNC2(tif, ifq->ifcq_disc_slots[slot].qid,
	    &ifqs->ifqs_tcq_stats));
}