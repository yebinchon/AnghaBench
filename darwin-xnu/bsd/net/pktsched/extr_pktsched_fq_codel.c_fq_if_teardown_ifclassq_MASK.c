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
struct ifclassq {scalar_t__ ifcq_type; int /*<<< orphan*/ * ifcq_disc; } ;
typedef  int /*<<< orphan*/  fq_if_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ifclassq*) ; 
 scalar_t__ PKTSCHEDT_FQ_CODEL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct ifclassq*) ; 

int
FUNC4(struct ifclassq *ifq)
{
	fq_if_t *fqs = (fq_if_t *)ifq->ifcq_disc;

	FUNC0(ifq);
	FUNC1(fqs != NULL && ifq->ifcq_type == PKTSCHEDT_FQ_CODEL);

	FUNC2(fqs);
	ifq->ifcq_disc = NULL;
	return (FUNC3(ifq));
}