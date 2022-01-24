#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ opcode; int /*<<< orphan*/  param_buf; } ;
typedef  TYPE_2__ tSMP_ENC ;
typedef  int /*<<< orphan*/  tBTM_BLE_LOCAL_ID_KEYS ;
typedef  int UINT8 ;
struct TYPE_10__ {int /*<<< orphan*/  ir; int /*<<< orphan*/  dhk; } ;
struct TYPE_8__ {TYPE_3__ id_keys; } ;
struct TYPE_11__ {TYPE_1__ devcb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  BT_OCTET16_LEN ; 
 scalar_t__ HCI_BLE_ENCRYPT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_4__ btm_cb ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(tSMP_ENC *p)
{
    UINT8 btm_ble_irk_pt = 0x01;
    tSMP_ENC output;

    FUNC0 ("btm_ble_process_dhk");

    if (p && p->opcode == HCI_BLE_ENCRYPT) {
        FUNC3(btm_cb.devcb.id_keys.dhk, p->param_buf, BT_OCTET16_LEN);
        FUNC0("BLE DHK generated.");

        /* IRK = D1(IR, 1) */
        if (!FUNC1(btm_cb.devcb.id_keys.ir, BT_OCTET16_LEN, &btm_ble_irk_pt,
                         1,   &output)) {
            /* reset all identity root related key */
            FUNC4(&btm_cb.devcb.id_keys, 0, sizeof(tBTM_BLE_LOCAL_ID_KEYS));
        } else {
            FUNC2(&output);
        }
    } else {
        /* reset all identity root related key */
        FUNC4(&btm_cb.devcb.id_keys, 0, sizeof(tBTM_BLE_LOCAL_ID_KEYS));
    }
}