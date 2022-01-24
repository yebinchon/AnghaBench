#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ opcode; int /*<<< orphan*/  param_buf; } ;
typedef  TYPE_4__ tSMP_ENC ;
struct TYPE_9__ {scalar_t__ privacy_mode; } ;
struct TYPE_7__ {int /*<<< orphan*/  irk; } ;
struct TYPE_8__ {TYPE_1__ id_keys; } ;
struct TYPE_11__ {TYPE_3__ ble_ctr_cb; TYPE_2__ devcb; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTM_BLE_KEY_TYPE_ID ; 
 scalar_t__ BTM_PRIVACY_NONE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  BT_OCTET16_LEN ; 
 scalar_t__ HCI_BLE_ENCRYPT ; 
 scalar_t__ btm_ble_process_er ; 
 TYPE_5__ btm_cb ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 scalar_t__ btm_gen_resolve_paddr_low ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(tSMP_ENC *p)
{
    FUNC0 ("btm_ble_process_irk");
    if (p && p->opcode == HCI_BLE_ENCRYPT) {
        FUNC5(btm_cb.devcb.id_keys.irk, p->param_buf, BT_OCTET16_LEN);
        FUNC3(BTM_BLE_KEY_TYPE_ID);

#if BLE_PRIVACY_SPT == TRUE
        /* if privacy is enabled, new RPA should be calculated */
        if (btm_cb.ble_ctr_cb.privacy_mode != BTM_PRIVACY_NONE) {
            FUNC2((void *)btm_gen_resolve_paddr_low);
        }
#endif
    } else {
        FUNC1("Generating IRK exception.");
    }

    /* proceed generate ER */
    if (!FUNC4((void *)btm_ble_process_er)) {
        FUNC1("Generating ER failed.");
    }
}