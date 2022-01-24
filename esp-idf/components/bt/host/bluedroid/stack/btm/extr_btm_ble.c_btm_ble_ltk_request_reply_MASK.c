#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  lltk; int /*<<< orphan*/  key_size; } ;
struct TYPE_8__ {int key_type; TYPE_1__ keys; } ;
struct TYPE_9__ {TYPE_2__ ble; int /*<<< orphan*/  ble_hci_handle; } ;
typedef  TYPE_3__ tBTM_SEC_DEV_REC ;
struct TYPE_10__ {int /*<<< orphan*/  enc_handle; int /*<<< orphan*/  key_size; } ;
typedef  TYPE_4__ tBTM_CB ;
typedef  int /*<<< orphan*/  BT_OCTET16 ;
typedef  scalar_t__ BOOLEAN ;
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 int BTM_LE_KEY_LENC ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_4__ btm_cb ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(BD_ADDR bda,  BOOLEAN use_stk, BT_OCTET16 stk)
{
    tBTM_SEC_DEV_REC    *p_rec = FUNC2 (bda);
    tBTM_CB *p_cb = &btm_cb;

    if (p_rec == NULL) {
        FUNC1("btm_ble_ltk_request_reply received for unknown device");
        return;
    }

    FUNC0 ("btm_ble_ltk_request_reply");
    p_cb->enc_handle = p_rec->ble_hci_handle;
    p_cb->key_size = p_rec->ble.keys.key_size;

    FUNC0("key size = %d", p_rec->ble.keys.key_size);
    if (use_stk) {
        FUNC4(btm_cb.enc_handle, stk);
    } else { /* calculate LTK using peer device  */
        if (p_rec->ble.key_type & BTM_LE_KEY_LENC) {
            FUNC4(btm_cb.enc_handle, p_rec->ble.keys.lltk);
        } else {
            FUNC3(btm_cb.enc_handle);
        }
    }
}