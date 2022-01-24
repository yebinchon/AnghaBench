#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tBTA_AG_SCB ;
typedef  int /*<<< orphan*/  tBTA_AG_DATA ;
struct TYPE_3__ {unsigned int event; int /*<<< orphan*/  layer_specific; } ;
typedef  TYPE_1__ BT_HDR ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
#define  BTA_AG_API_DISABLE_EVT 131 
#define  BTA_AG_API_ENABLE_EVT 130 
#define  BTA_AG_API_REGISTER_EVT 129 
#define  BTA_AG_API_RESULT_EVT 128 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

BOOLEAN FUNC7(BT_HDR *p_msg)
{
    tBTA_AG_SCB *p_scb;
    FUNC0("bta_ag_hdl_event: Event 0x%04x ", p_msg->event);

    switch (p_msg->event) {
        /* handle enable event */
        case BTA_AG_API_ENABLE_EVT:
            FUNC2((tBTA_AG_DATA *) p_msg);
            break;

        /* handle disable event */
        case BTA_AG_API_DISABLE_EVT:
            FUNC1((tBTA_AG_DATA *) p_msg);
            break;

        /* handle register event */
        case BTA_AG_API_REGISTER_EVT:
            FUNC3((tBTA_AG_DATA *) p_msg);
            break;

        /* handle result event */
        case BTA_AG_API_RESULT_EVT:
            FUNC4((tBTA_AG_DATA *) p_msg);
            break;

        /* all others reference scb by handle */
        default:
            if ((p_scb = FUNC5(p_msg->layer_specific)) != NULL) {
                FUNC0("bta_ag_hdl_event: p_scb 0x%08x ", (unsigned int)p_scb);
                FUNC6(p_scb, p_msg->event, (tBTA_AG_DATA *) p_msg);
            }
            break;
    }
    return TRUE;
}