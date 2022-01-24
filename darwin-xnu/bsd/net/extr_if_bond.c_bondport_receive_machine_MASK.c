#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* bondport_ref ;
struct TYPE_6__ {int po_receive_state; int /*<<< orphan*/  po_media_info; } ;
typedef  int LAEvent ;

/* Variables and functions */
#define  LAEventMediaChange 131 
#define  LAEventPacket 130 
 int const LAEventStart ; 
#define  ReceiveState_LACP_DISABLED 129 
#define  ReceiveState_PORT_DISABLED 128 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,void*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,void*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(bondport_ref p, LAEvent event,
			 void * event_data)
{
    switch (event) {
    case LAEventPacket:
	if (p->po_receive_state != ReceiveState_LACP_DISABLED) {
	    FUNC0(p, event, event_data);
	}
	break;
    case LAEventMediaChange:
	if (FUNC3(&p->po_media_info)) {
	    switch (p->po_receive_state) {
	    case ReceiveState_PORT_DISABLED:
	    case ReceiveState_LACP_DISABLED:
		FUNC2(p, LAEventMediaChange, NULL);
		break;
	    default:
		break;
	    }
	}
	else {
	    FUNC2(p, LAEventStart, NULL);
	}
	break;
    default:
	FUNC1(p, event, event_data);
	break;
    }
    return;
}