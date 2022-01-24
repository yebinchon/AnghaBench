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
struct qfq_if {int dummy; } ;
struct ifclassq {scalar_t__ ifcq_type; TYPE_1__* ifcq_disc_slots; struct qfq_if* ifcq_disc; } ;
struct TYPE_2__ {int /*<<< orphan*/ * cl; scalar_t__ qid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ifclassq*) ; 
 int IFCQ_SC_MAX ; 
 scalar_t__ PKTSCHEDT_QFQ ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct ifclassq*) ; 
 int /*<<< orphan*/  FUNC3 (struct qfq_if*) ; 

int
FUNC4(struct ifclassq *ifq)
{
	struct qfq_if *qif = ifq->ifcq_disc;
	int i;

	FUNC0(ifq);
	FUNC1(qif != NULL && ifq->ifcq_type == PKTSCHEDT_QFQ);

	(void) FUNC3(qif);

	ifq->ifcq_disc = NULL;
	for (i = 0; i < IFCQ_SC_MAX; i++) {
		ifq->ifcq_disc_slots[i].qid = 0;
		ifq->ifcq_disc_slots[i].cl = NULL;
	}

	return (FUNC2(ifq));
}