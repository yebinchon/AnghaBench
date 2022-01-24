#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* bondport_ref ;
struct TYPE_9__ {int po_receive_state; } ;
typedef  int /*<<< orphan*/  LAEvent ;

/* Variables and functions */
 int /*<<< orphan*/  LAEventStart ; 
#define  ReceiveState_CURRENT 134 
#define  ReceiveState_DEFAULTED 133 
#define  ReceiveState_EXPIRED 132 
#define  ReceiveState_INITIALIZE 131 
#define  ReceiveState_LACP_DISABLED 130 
#define  ReceiveState_PORT_DISABLED 129 
#define  ReceiveState_none 128 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static void
FUNC6(bondport_ref p, LAEvent event, 
			       void * event_data)
{
    switch (p->po_receive_state) {
    case ReceiveState_none:
	FUNC3(p, LAEventStart, NULL);
	break;
    case ReceiveState_INITIALIZE:
	FUNC3(p, event, event_data);
	break;
    case ReceiveState_PORT_DISABLED:
	FUNC5(p, event, event_data);
	break;
    case ReceiveState_EXPIRED:
	FUNC2(p, event, event_data);
	break;
    case ReceiveState_LACP_DISABLED:
	FUNC4(p, event, event_data);
	break;
    case ReceiveState_DEFAULTED:
	FUNC1(p, event, event_data);
	break;
    case ReceiveState_CURRENT:
	FUNC0(p, event, event_data);
	break;
    default:
	break;
    }
    return;
}