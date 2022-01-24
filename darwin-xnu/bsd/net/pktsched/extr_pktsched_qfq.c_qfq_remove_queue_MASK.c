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
typedef  int /*<<< orphan*/  u_int32_t ;
struct qfq_if {int /*<<< orphan*/  qif_ifq; } ;
struct qfq_class {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct qfq_if*,struct qfq_class*) ; 
 struct qfq_class* FUNC2 (struct qfq_if*,int /*<<< orphan*/ ) ; 

int
FUNC3(struct qfq_if *qif, u_int32_t qid)
{
	struct qfq_class *cl;

	FUNC0(qif->qif_ifq);

	if ((cl = FUNC2(qif, qid)) == NULL)
		return (EINVAL);

	return (FUNC1(qif, cl));
}