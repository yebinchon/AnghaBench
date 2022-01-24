#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct ifclassq {int dummy; } ;
struct TYPE_10__ {scalar_t__ pktsched_ptype; } ;
typedef  TYPE_1__ pktsched_pkt_t ;
typedef  int /*<<< orphan*/  fq_t ;
struct TYPE_11__ {struct ifclassq* fqs_ifq; } ;
typedef  TYPE_2__ fq_if_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ifclassq*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifclassq*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PKTF_PRIV_GUARDED ; 
 scalar_t__ QP_MBUF ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ **,scalar_t__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC7(fq_if_t *fqs, fq_t *fq)
{
	pktsched_pkt_t pkt;
	uint32_t *pkt_flags;
	uint64_t *pkt_timestamp;
	struct ifclassq *ifq = fqs->fqs_ifq;

	FUNC2(&pkt);
	if (FUNC3(fqs, fq, &pkt) == NULL)
		return;

	FUNC6(&pkt, &pkt_flags, &pkt_timestamp, NULL, NULL,
	    NULL, NULL);

	*pkt_timestamp = 0;
	if (pkt.pktsched_ptype == QP_MBUF)
		*pkt_flags &= ~PKTF_PRIV_GUARDED;

	FUNC1(ifq, 1, FUNC5(&pkt));
	FUNC0(ifq);
	FUNC4(&pkt);
}