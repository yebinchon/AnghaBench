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
struct ifclassq {int ifcq_type; } ;
struct if_ifclassq_stats {int dummy; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct ifclassq*) ; 
#define  PKTSCHEDT_FQ_CODEL 130 
#define  PKTSCHEDT_QFQ 129 
#define  PKTSCHEDT_TCQ 128 
 int FUNC1 (struct ifclassq*,int /*<<< orphan*/ ,struct if_ifclassq_stats*) ; 
 int FUNC2 (struct ifclassq*,int /*<<< orphan*/ ,struct if_ifclassq_stats*) ; 
 int FUNC3 (struct ifclassq*,int /*<<< orphan*/ ,struct if_ifclassq_stats*) ; 

int
FUNC4(struct ifclassq *ifq, u_int32_t qid,
    struct if_ifclassq_stats *ifqs)
{
	int error;

	FUNC0(ifq);

	switch (ifq->ifcq_type) {
	case PKTSCHEDT_TCQ:
		error = FUNC3(ifq, qid, ifqs);
		break;

	case PKTSCHEDT_QFQ:
		error = FUNC2(ifq, qid, ifqs);
		break;

	case PKTSCHEDT_FQ_CODEL:
		error = FUNC1(ifq, qid, ifqs);
		break;
	default:
		error = ENXIO;
		break;
	}

	return (error);
}