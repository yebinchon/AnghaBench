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
typedef  int /*<<< orphan*/  tSMP_ENC ;
struct TYPE_7__ {scalar_t__ opcode; int /*<<< orphan*/  param_buf; } ;
typedef  TYPE_2__ tBTM_RAND_ENC ;
typedef  int /*<<< orphan*/  tBTM_BLE_LOCAL_ID_KEYS ;
typedef  int UINT8 ;
struct TYPE_8__ {int /*<<< orphan*/ * ir; } ;
struct TYPE_6__ {TYPE_3__ id_keys; } ;
struct TYPE_9__ {TYPE_1__ devcb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  BT_OCTET16_LEN ; 
 int /*<<< orphan*/  BT_OCTET8_LEN ; 
 scalar_t__ HCI_BLE_RAND ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_4__ btm_cb ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(tBTM_RAND_ENC *p)
{
    UINT8 btm_ble_dhk_pt = 0x03;
    tSMP_ENC output;

    FUNC0 ("btm_ble_process_ir2");

    if (p && p->opcode == HCI_BLE_RAND) {
        /* remembering in control block */
        FUNC3(&btm_cb.devcb.id_keys.ir[8], p->param_buf, BT_OCTET8_LEN);
        /* generate DHK= Eir({0x03, 0x00, 0x00 ...}) */


        FUNC1(btm_cb.devcb.id_keys.ir, BT_OCTET16_LEN, &btm_ble_dhk_pt,
                    1, &output);
        FUNC2(&output);

        FUNC0("BLE IR generated.");
    } else {
        FUNC4(&btm_cb.devcb.id_keys, 0, sizeof(tBTM_BLE_LOCAL_ID_KEYS));
    }
}