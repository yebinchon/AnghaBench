#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ opcode; int /*<<< orphan*/  param_buf; } ;
typedef  TYPE_2__ tBTM_RAND_ENC ;
typedef  int /*<<< orphan*/  tBTM_BLE_LOCAL_ID_KEYS ;
struct TYPE_8__ {int /*<<< orphan*/  ir; } ;
struct TYPE_6__ {TYPE_3__ id_keys; } ;
struct TYPE_9__ {TYPE_1__ devcb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  BT_OCTET8_LEN ; 
 scalar_t__ HCI_BLE_RAND ; 
 scalar_t__ btm_ble_process_ir2 ; 
 TYPE_4__ btm_cb ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(tBTM_RAND_ENC *p)
{
    FUNC0 ("btm_ble_process_ir");

    if (p && p->opcode == HCI_BLE_RAND) {
        /* remembering in control block */
        FUNC3(btm_cb.devcb.id_keys.ir, p->param_buf, BT_OCTET8_LEN);

        if (!FUNC2((void *)btm_ble_process_ir2)) {
            FUNC1("Generating IR2 failed.");
            FUNC4(&btm_cb.devcb.id_keys, 0, sizeof(tBTM_BLE_LOCAL_ID_KEYS));
        }
    }
}