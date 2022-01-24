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
struct qfq_if {struct ifclassq* qif_ifq; } ;
struct ifclassq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ifclassq*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifclassq*) ; 
 int FUNC2 (struct qfq_if*) ; 

int
FUNC3(struct qfq_if *qif)
{
	struct ifclassq *ifq = qif->qif_ifq;
	int err;

	FUNC0(ifq);
	err = FUNC2(qif);
	FUNC1(ifq);

	return (err);
}