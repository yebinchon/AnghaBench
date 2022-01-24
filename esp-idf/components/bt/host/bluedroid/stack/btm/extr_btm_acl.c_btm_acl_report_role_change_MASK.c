#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  hci_status; } ;
typedef  TYPE_2__ tBTM_ROLE_SWITCH_CMPL ;
typedef  int /*<<< orphan*/  UINT8 ;
struct TYPE_10__ {int /*<<< orphan*/  remote_bd_addr; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* p_switch_role_cb ) (TYPE_2__*) ;TYPE_4__ switch_role_ref_data; } ;
struct TYPE_11__ {TYPE_1__ devcb; } ;
typedef  scalar_t__ BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  BD_ADDR_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_7__ btm_cb ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

void FUNC5 (UINT8 hci_status, BD_ADDR bda)
{
    tBTM_ROLE_SWITCH_CMPL   ref_data;
    FUNC0 ("btm_acl_report_role_change\n");
    if (btm_cb.devcb.p_switch_role_cb
            && (bda && (0 == FUNC1(btm_cb.devcb.switch_role_ref_data.remote_bd_addr, bda, BD_ADDR_LEN)))) {
        FUNC2 (&ref_data, &btm_cb.devcb.switch_role_ref_data, sizeof(tBTM_ROLE_SWITCH_CMPL));
        ref_data.hci_status = hci_status;
        (*btm_cb.devcb.p_switch_role_cb)(&ref_data);
        FUNC3 (&btm_cb.devcb.switch_role_ref_data, 0, sizeof(tBTM_ROLE_SWITCH_CMPL));
        btm_cb.devcb.p_switch_role_cb = NULL;
    }
}