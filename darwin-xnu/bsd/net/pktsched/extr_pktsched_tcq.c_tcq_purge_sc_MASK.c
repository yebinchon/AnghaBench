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
struct tcq_if {struct ifclassq* tif_ifq; } ;
struct ifclassq {TYPE_1__* ifcq_disc_slots; } ;
struct TYPE_5__ {scalar_t__ sc; size_t packets; size_t bytes; int /*<<< orphan*/  flow; } ;
typedef  TYPE_2__ cqrq_purge_sc_t ;
struct TYPE_4__ {int /*<<< orphan*/  cl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ifclassq*) ; 
 size_t IFCQ_SC_MAX ; 
 size_t FUNC1 (scalar_t__) ; 
 scalar_t__ MBUF_SC_UNSPEC ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct tcq_if*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*,size_t*) ; 

__attribute__((used)) static void
FUNC5(struct tcq_if *tif, cqrq_purge_sc_t *pr)
{
	struct ifclassq *ifq = tif->tif_ifq;
	u_int32_t i;

	FUNC0(ifq);

	FUNC3(pr->sc == MBUF_SC_UNSPEC || FUNC2(pr->sc));
	FUNC3(pr->flow != 0);

	if (pr->sc != MBUF_SC_UNSPEC) {
		i = FUNC1(pr->sc);
		FUNC3(i < IFCQ_SC_MAX);

		FUNC4(tif, ifq->ifcq_disc_slots[i].cl,
		    pr->flow, &pr->packets, &pr->bytes);
	} else {
		u_int32_t cnt, len;

		pr->packets = 0;
		pr->bytes = 0;

		for (i = 0; i < IFCQ_SC_MAX; i++) {
			FUNC4(tif, ifq->ifcq_disc_slots[i].cl,
			    pr->flow, &cnt, &len);
			pr->packets += cnt;
			pr->bytes += len;
		}
	}
}