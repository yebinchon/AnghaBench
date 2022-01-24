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
struct ifclassq {int ifcq_type; int /*<<< orphan*/  ifcq_flags; int /*<<< orphan*/  ifcq_ifp; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  IFCQF_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (struct ifclassq*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifclassq*) ; 
#define  PKTSCHEDT_FQ_CODEL 131 
#define  PKTSCHEDT_NONE 130 
#define  PKTSCHEDT_QFQ 129 
#define  PKTSCHEDT_TCQ 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ifclassq*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct ifclassq*) ; 
 int FUNC6 (struct ifclassq*) ; 

int
FUNC7(struct ifclassq *ifq)
{
	int error = 0;

	FUNC1(ifq);

	FUNC4(ifq->ifcq_ifp, 1);
	FUNC2(FUNC0(ifq));

	ifq->ifcq_flags &= ~IFCQF_ENABLED;

	switch (ifq->ifcq_type) {
	case PKTSCHEDT_NONE:
		break;

	case PKTSCHEDT_TCQ:
		error = FUNC6(ifq);
		break;

	case PKTSCHEDT_QFQ:
		error = FUNC5(ifq);
		break;

	case PKTSCHEDT_FQ_CODEL:
		error = FUNC3(ifq);
		break;
	default:
		error = ENXIO;
		break;
	}
	return (error);
}