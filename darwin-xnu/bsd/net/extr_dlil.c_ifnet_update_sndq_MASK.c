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
struct tb_profile {int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_2__ {int /*<<< orphan*/  tbr_percent; int /*<<< orphan*/  tbr_rate_raw; } ;
struct ifclassq {TYPE_1__ ifcq_tbr; } ;
typedef  int /*<<< orphan*/  cqev_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (struct ifclassq*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifclassq*) ; 
 scalar_t__ FUNC2 (struct ifclassq*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifclassq*,struct tb_profile*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ifclassq*,int /*<<< orphan*/ ) ; 

void
FUNC5(struct ifclassq *ifq, cqev_t ev)
{
	FUNC1(ifq);

	if (!(FUNC0(ifq)))
		return;

	if (FUNC2(ifq)) {
		struct tb_profile tb = { ifq->ifcq_tbr.tbr_rate_raw,
		    ifq->ifcq_tbr.tbr_percent, 0 };
		(void) FUNC3(ifq, &tb, FALSE);
	}

	FUNC4(ifq, ev);
}