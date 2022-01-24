#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct ifclassq {int dummy; } ;
typedef  int /*<<< orphan*/  pktsched_pkt_t ;
struct TYPE_10__ {scalar_t__ fq_bytes; size_t fq_sc_index; scalar_t__ fq_getqtime; int /*<<< orphan*/  fq_ptype; } ;
typedef  TYPE_2__ fq_t ;
struct TYPE_11__ {TYPE_4__* fqs_classq; struct ifclassq* fqs_ifq; } ;
typedef  TYPE_3__ fq_if_t ;
struct TYPE_9__ {int /*<<< orphan*/  fcl_pkt_cnt; int /*<<< orphan*/  fcl_byte_cnt; } ;
struct TYPE_12__ {TYPE_1__ fcl_stat; } ;
typedef  TYPE_4__ fq_if_classq_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ifclassq*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct ifclassq*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,void*) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 

void *
FUNC7(fq_if_t *fqs, fq_t *fq, pktsched_pkt_t *pkt)
{
	void *p;
	uint32_t plen;
	fq_if_classq_t *fq_cl;
	struct ifclassq *ifq = fqs->fqs_ifq;

	FUNC3(fq, p);
	if (p == NULL)
		return (NULL);

	FUNC6(pkt, fq->fq_ptype, p);
	plen = FUNC5(pkt);

	FUNC2(fq->fq_bytes >= plen);
	fq->fq_bytes -= plen;

	fq_cl = &fqs->fqs_classq[fq->fq_sc_index];
	fq_cl->fcl_stat.fcl_byte_cnt -= plen;
	fq_cl->fcl_stat.fcl_pkt_cnt--;
	FUNC1(ifq);
	FUNC0(ifq, plen);

	/* Reset getqtime so that we don't count idle times */
	if (FUNC4(fq))
		fq->fq_getqtime = 0;

	return (p);
}