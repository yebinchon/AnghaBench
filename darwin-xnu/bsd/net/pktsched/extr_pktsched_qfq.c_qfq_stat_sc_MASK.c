#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u_int32_t ;
struct qfq_if {struct ifclassq* qif_ifq; } ;
struct qfq_class {int /*<<< orphan*/  cl_q; } ;
struct ifclassq {TYPE_1__* ifcq_disc_slots; } ;
struct TYPE_5__ {scalar_t__ sc; int /*<<< orphan*/  bytes; int /*<<< orphan*/  packets; } ;
typedef  TYPE_2__ cqrq_stat_sc_t ;
struct TYPE_4__ {struct qfq_class* cl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ifclassq*) ; 
 size_t IFCQ_SC_MAX ; 
 size_t FUNC1 (scalar_t__) ; 
 scalar_t__ MBUF_SC_UNSPEC ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct qfq_if *qif, cqrq_stat_sc_t *sr)
{
	struct ifclassq *ifq = qif->qif_ifq;
	struct qfq_class *cl;
	u_int32_t i;

	FUNC0(ifq);

	FUNC3(sr->sc == MBUF_SC_UNSPEC || FUNC2(sr->sc));

	i = FUNC1(sr->sc);
	FUNC3(i < IFCQ_SC_MAX);

	cl = ifq->ifcq_disc_slots[i].cl;
	sr->packets = FUNC4(&cl->cl_q);
	sr->bytes = FUNC5(&cl->cl_q);

	return (0);
}