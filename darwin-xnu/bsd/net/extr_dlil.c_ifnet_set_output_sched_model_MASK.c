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
typedef  scalar_t__ u_int32_t ;
struct ifclassq {int dummy; } ;
struct ifnet {int if_eflags; scalar_t__ if_output_sched_model; struct ifclassq if_snd; } ;
typedef  int /*<<< orphan*/  errno_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct ifclassq*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifclassq*) ; 
 int IFEF_TXSTART ; 
 scalar_t__ IFNET_SCHED_MODEL_MAX ; 
 int /*<<< orphan*/  FUNC2 (struct ifclassq*) ; 

errno_t
FUNC3(struct ifnet *ifp, u_int32_t model)
{
	struct ifclassq *ifq;
	u_int32_t omodel;
	errno_t err;

	if (ifp == NULL || model >= IFNET_SCHED_MODEL_MAX)
		return (EINVAL);
	else if (!(ifp->if_eflags & IFEF_TXSTART))
		return (ENXIO);

	ifq = &ifp->if_snd;
	FUNC0(ifq);
	omodel = ifp->if_output_sched_model;
	ifp->if_output_sched_model = model;
	if ((err = FUNC2(ifq)) != 0)
		ifp->if_output_sched_model = omodel;
	FUNC1(ifq);

	return (err);
}