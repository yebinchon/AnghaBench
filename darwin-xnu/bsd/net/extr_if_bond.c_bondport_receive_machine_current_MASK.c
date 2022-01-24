#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct timeval {int /*<<< orphan*/  tv_usec; int /*<<< orphan*/  tv_sec; } ;
typedef  TYPE_1__* partner_state_ref ;
typedef  int /*<<< orphan*/  devtimer_timeout_func ;
typedef  TYPE_2__* bondport_ref ;
struct TYPE_13__ {int /*<<< orphan*/  verbose; } ;
struct TYPE_11__ {int /*<<< orphan*/  ps_state; } ;
struct TYPE_12__ {int /*<<< orphan*/  po_current_while_timer; TYPE_1__ po_partner_state; int /*<<< orphan*/  po_actor_state; int /*<<< orphan*/  po_receive_state; } ;
typedef  int LAEvent ;

/* Variables and functions */
 int /*<<< orphan*/  LACP_LONG_TIMEOUT_TIME ; 
 int /*<<< orphan*/  LACP_SHORT_TIMEOUT_TIME ; 
#define  LAEventPacket 129 
 int /*<<< orphan*/  LAEventStart ; 
#define  LAEventTimeout 128 
 int /*<<< orphan*/  ReceiveState_CURRENT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,void*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,void*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,void*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct timeval,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 TYPE_3__* g_bond ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(bondport_ref p, LAEvent event,
				 void * event_data)
{
    partner_state_ref	ps;
    struct timeval	tv;

    switch (event) {
    case LAEventPacket:
	FUNC6(p->po_current_while_timer);
	if (g_bond->verbose) {
	    FUNC10("[%s] Receive CURRENT\n",
			     FUNC4(p));
	}
	p->po_receive_state = ReceiveState_CURRENT;
	FUNC2(p, event_data);
	FUNC1(p, event_data);
	FUNC0(p, event_data);
	p->po_actor_state
	    = FUNC8(p->po_actor_state);
	FUNC3(p);
	/* start current_while timer */
	ps = &p->po_partner_state;
	if (FUNC9(ps->ps_state)) {
	    tv.tv_sec = LACP_SHORT_TIMEOUT_TIME;
	}
	else {
	    tv.tv_sec = LACP_LONG_TIMEOUT_TIME;
	}
	tv.tv_usec = 0;
	FUNC7(p->po_current_while_timer, tv,
			      (devtimer_timeout_func)
			      bondport_receive_machine_current,
			      (void *)LAEventTimeout, NULL);
	break;
    case LAEventTimeout:
	FUNC5(p, LAEventStart, NULL);
	break;
    default:
	break;
    }
    return;
}