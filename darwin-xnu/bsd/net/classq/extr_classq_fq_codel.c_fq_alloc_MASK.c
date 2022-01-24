#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  fq_mbufq; scalar_t__ fq_ptype; } ;
typedef  TYPE_1__ fq_t ;
typedef  scalar_t__ classq_pkt_type_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MCR_SLEEP ; 
 scalar_t__ QP_MBUF ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  flowq_cache ; 
 int /*<<< orphan*/  flowq_size ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

fq_t *
FUNC4(classq_pkt_type_t ptype)
{
	fq_t *fq = NULL;
	fq = FUNC3(flowq_cache, MCR_SLEEP);
	if (fq == NULL) {
		FUNC2(LOG_ERR, "%s: unable to allocate from flowq_cache\n");
		return (NULL);
	}

	FUNC1(fq, flowq_size);
	fq->fq_ptype = ptype;
	if (ptype == QP_MBUF) {
		FUNC0(&fq->fq_mbufq);
	}
	return (fq);
}