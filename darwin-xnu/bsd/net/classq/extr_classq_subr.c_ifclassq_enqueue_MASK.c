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
struct ifclassq {int dummy; } ;
typedef  int /*<<< orphan*/  errno_t ;
typedef  int /*<<< orphan*/  classq_pkt_type_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ifclassq*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ifclassq*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifclassq*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifclassq*) ; 
#define  QP_MBUF 128 

errno_t
FUNC4(struct ifclassq *ifq, void *p, classq_pkt_type_t ptype,
    boolean_t *pdrop)
{
	errno_t err;

	switch (ptype) {
	case QP_MBUF:
		FUNC2(ifq);
		break;

	default:
		FUNC1(ifq);
		break;
	}

	FUNC0(ifq, p, ptype, err, pdrop);
	FUNC3(ifq);
	return (err);
}