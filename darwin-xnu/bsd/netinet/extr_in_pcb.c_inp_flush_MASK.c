#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int32_t ;
struct TYPE_4__ {TYPE_1__* ro_rt; } ;
struct inpcb {scalar_t__ inp_flowhash; struct ifnet* inp_last_outifp; TYPE_2__ inp_route; } ;
struct ifnet {int dummy; } ;
struct TYPE_3__ {struct ifnet* rt_ifp; } ;

/* Variables and functions */
 int EINVAL ; 
 int SO_TC_ALL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

int
FUNC3(struct inpcb *inp, int optval)
{
	u_int32_t flowhash = inp->inp_flowhash;
	struct ifnet *rtifp, *oifp;

	/* Either all classes or one of the valid ones */
	if (optval != SO_TC_ALL && !FUNC0(optval))
		return (EINVAL);

	/* We need a flow hash for identification */
	if (flowhash == 0)
		return (0);

	/* Grab the interfaces from the route and pcb */
	rtifp = ((inp->inp_route.ro_rt != NULL) ?
	    inp->inp_route.ro_rt->rt_ifp : NULL);
	oifp = inp->inp_last_outifp;

	if (rtifp != NULL)
		FUNC1(rtifp, FUNC2(optval), flowhash, NULL, NULL, 0);
	if (oifp != NULL && oifp != rtifp)
		FUNC1(oifp, FUNC2(optval), flowhash, NULL, NULL, 0);

	return (0);
}