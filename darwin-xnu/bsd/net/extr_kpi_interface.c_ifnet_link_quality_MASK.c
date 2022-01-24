#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* ifnet_t ;
struct TYPE_6__ {int lqm_state; } ;
struct TYPE_7__ {TYPE_1__ if_interface_state; } ;

/* Variables and functions */
 int IFNET_LQM_THRESH_OFF ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

int
FUNC2(ifnet_t ifp)
{
	int lqm;

	if (ifp == NULL)
		return (IFNET_LQM_THRESH_OFF);

	FUNC1(ifp);
	lqm = ifp->if_interface_state.lqm_state;
	FUNC0(ifp);

	return (lqm);
}