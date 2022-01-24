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
struct tcq_if {int dummy; } ;
struct ifclassq {scalar_t__ ifcq_disc; } ;
typedef  int /*<<< orphan*/  cqrq_throttle_t ;
typedef  int cqrq_t ;
typedef  int /*<<< orphan*/  cqrq_stat_sc_t ;
typedef  int /*<<< orphan*/  cqrq_purge_sc_t ;
typedef  int /*<<< orphan*/  cqev_t ;

/* Variables and functions */
#define  CLASSQRQ_EVENT 132 
#define  CLASSQRQ_PURGE 131 
#define  CLASSQRQ_PURGE_SC 130 
#define  CLASSQRQ_STAT_SC 129 
#define  CLASSQRQ_THROTTLE 128 
 int /*<<< orphan*/  FUNC0 (struct ifclassq*) ; 
 int /*<<< orphan*/  FUNC1 (struct tcq_if*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tcq_if*) ; 
 int /*<<< orphan*/  FUNC3 (struct tcq_if*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct tcq_if*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct tcq_if*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct ifclassq *ifq, cqrq_t req, void *arg)
{
	struct tcq_if	*tif = (struct tcq_if *)ifq->ifcq_disc;
	int err = 0;

	FUNC0(ifq);

	switch (req) {
	case CLASSQRQ_PURGE:
		FUNC2(tif);
		break;

	case CLASSQRQ_PURGE_SC:
		FUNC3(tif, (cqrq_purge_sc_t *)arg);
		break;

	case CLASSQRQ_EVENT:
		FUNC1(tif, (cqev_t)arg);
		break;

	case CLASSQRQ_THROTTLE:
		err = FUNC5(tif, (cqrq_throttle_t *)arg);
		break;

	case CLASSQRQ_STAT_SC:
		err = FUNC4(tif, (cqrq_stat_sc_t *)arg);
		break;
	}
	return (err);
}