#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int32_t ;
struct ifnet {int dummy; } ;
typedef  int /*<<< orphan*/  lacp_port_priority ;
typedef  scalar_t__ lacp_actor_partner_state ;
typedef  TYPE_1__* bondport_ref ;
struct TYPE_9__ {int /*<<< orphan*/  ifdm_current; } ;
struct TYPE_8__ {scalar_t__ po_actor_state; int /*<<< orphan*/  po_priority; int /*<<< orphan*/  po_mux_state; int /*<<< orphan*/  po_receive_state; int /*<<< orphan*/ * po_transmit_timer; int /*<<< orphan*/ * po_wait_while_timer; int /*<<< orphan*/ * po_periodic_timer; int /*<<< orphan*/ * po_current_while_timer; int /*<<< orphan*/  po_media_info; struct ifnet* po_ifp; TYPE_2__ po_devmtu; int /*<<< orphan*/  po_name; int /*<<< orphan*/  po_multicast; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  M_BOND ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  MuxState_none ; 
 int /*<<< orphan*/  ReceiveState_none ; 
 TYPE_1__* FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 char* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  bondport_timer_process_func ; 
 void* FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*) ; 
 char* FUNC5 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC6 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC7 (struct ifnet*) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int FUNC13 (struct ifnet*,TYPE_2__*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int,char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bondport_ref
FUNC15(struct ifnet * port_ifp, lacp_port_priority priority,
		int active, int short_timeout, int * ret_error)
{
    int				error = 0;
    bondport_ref		p = NULL;
    lacp_actor_partner_state	s;

    *ret_error = 0;
    p = FUNC0(sizeof(*p), M_BOND, M_WAITOK | M_ZERO);
    if (p == NULL) {
	*ret_error = ENOMEM;
	return (NULL);
    }
    FUNC11(&p->po_multicast);
    if ((u_int32_t)FUNC14(p->po_name, sizeof(p->po_name), "%s%d",
			 FUNC5(port_ifp), FUNC6(port_ifp)) 
	>= sizeof(p->po_name)) {
	FUNC12("if_bond: name too large\n");
	*ret_error = EINVAL;
	goto failed;
    }
    error = FUNC13(port_ifp, &p->po_devmtu);
    if (error != 0) {
	FUNC12("if_bond: SIOCGIFDEVMTU %s failed, %d\n",
	       FUNC2(p), error);
	goto failed;
    }
    /* remember the current interface MTU so it can be restored */
    p->po_devmtu.ifdm_current = FUNC4(port_ifp);
    p->po_ifp = port_ifp;
    p->po_media_info = FUNC7(port_ifp);
    p->po_current_while_timer = FUNC3(bondport_timer_process_func, p);
    if (p->po_current_while_timer == NULL) {
	*ret_error = ENOMEM;
	goto failed;
    }
    p->po_periodic_timer = FUNC3(bondport_timer_process_func, p);
    if (p->po_periodic_timer == NULL) {
	*ret_error = ENOMEM;
	goto failed;
    }
    p->po_wait_while_timer = FUNC3(bondport_timer_process_func, p);
    if (p->po_wait_while_timer == NULL) {
	*ret_error = ENOMEM;
	goto failed;
    }
    p->po_transmit_timer = FUNC3(bondport_timer_process_func, p);
    if (p->po_transmit_timer == NULL) {
	*ret_error = ENOMEM;
	goto failed;
    }
    p->po_receive_state = ReceiveState_none;
    p->po_mux_state = MuxState_none;
    p->po_priority = priority;
    s = 0;
    s = FUNC9(s);
    if (short_timeout) {
	s = FUNC10(s);
    }
    if (active) {
	s = FUNC8(s);
    }
    p->po_actor_state = s;
    return (p);

 failed:
    FUNC1(p);
    return (NULL);
}