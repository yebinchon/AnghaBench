#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* bondport_ref ;
struct TYPE_7__ {int po_mux_state; } ;
typedef  int /*<<< orphan*/  LAEvent ;

/* Variables and functions */
 int /*<<< orphan*/  LAEventStart ; 
#define  MuxState_ATTACHED 132 
#define  MuxState_COLLECTING_DISTRIBUTING 131 
#define  MuxState_DETACHED 130 
#define  MuxState_WAITING 129 
#define  MuxState_none 128 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static void
FUNC4(bondport_ref p, LAEvent event, void * event_data)
{
    switch (p->po_mux_state) {
    case MuxState_none:
	FUNC2(p, LAEventStart, NULL);
	break;
    case MuxState_DETACHED:
	FUNC2(p, event, event_data);
	break;
    case MuxState_WAITING:
	FUNC3(p, event, event_data);
	break;
    case MuxState_ATTACHED:
	FUNC0(p, event, event_data);
	break;
    case MuxState_COLLECTING_DISTRIBUTING:
	FUNC1(p, event, event_data);
	break;
    default:
	break;
    }
    return;
}