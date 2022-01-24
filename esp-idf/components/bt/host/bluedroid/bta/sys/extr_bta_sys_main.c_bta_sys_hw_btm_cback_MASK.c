#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tBTM_DEV_STATUS ;
struct TYPE_5__ {int /*<<< orphan*/  event; } ;
struct TYPE_6__ {TYPE_1__ hdr; } ;
typedef  TYPE_2__ tBTA_SYS_HW_MSG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  BTA_SYS_ERROR_EVT ; 
 int /*<<< orphan*/  BTA_SYS_EVT_STACK_ENABLED_EVT ; 
 scalar_t__ BTM_DEV_STATUS_DOWN ; 
 scalar_t__ BTM_DEV_STATUS_UP ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (int) ; 

void FUNC4( tBTM_DEV_STATUS status )
{

    tBTA_SYS_HW_MSG *sys_event;

    FUNC0(" bta_sys_hw_btm_cback was called with parameter: %i" , status );

    /* send a message to BTA SYS */
    if ((sys_event = (tBTA_SYS_HW_MSG *) FUNC3(sizeof(tBTA_SYS_HW_MSG))) != NULL) {
        if (status == BTM_DEV_STATUS_UP) {
            sys_event->hdr.event = BTA_SYS_EVT_STACK_ENABLED_EVT;
        } else if (status == BTM_DEV_STATUS_DOWN) {
            sys_event->hdr.event = BTA_SYS_ERROR_EVT;
        } else {
            /* BTM_DEV_STATUS_CMD_TOUT is ignored for now. */
            FUNC2 (sys_event);
            sys_event = NULL;
        }

        if (sys_event) {
            FUNC1(sys_event);
        }
    } else {
        FUNC0("ERROR bta_sys_hw_btm_cback couldn't send msg" );
    }
}