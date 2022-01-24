#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ key_size; } ;
struct TYPE_7__ {int /*<<< orphan*/  pseudo_addr; TYPE_1__ keys; } ;
struct TYPE_8__ {scalar_t__ sec_state; scalar_t__ enc_key_size; TYPE_2__ ble; scalar_t__ role_master; scalar_t__ p_callback; scalar_t__ sec_flags; } ;
typedef  TYPE_3__ tBTM_SEC_DEV_REC ;
typedef  scalar_t__ UINT8 ;
typedef  int BOOLEAN ;
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  BTM_ERR_PROCESSING ; 
 scalar_t__ BTM_SEC_STATE_ENCRYPTING ; 
 scalar_t__ BTM_SEC_STATE_IDLE ; 
 int /*<<< orphan*/  BTM_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC6(BD_ADDR bd_addr, UINT8 encr_enable)
{
    tBTM_SEC_DEV_REC    *p_dev_rec = FUNC2 (bd_addr);
    BOOLEAN             enc_cback;

    if (!p_dev_rec) {
        FUNC1 ("btm_ble_link_encrypted (No Device Found!) encr_enable=%d", encr_enable);
        return;
    }

    FUNC0 ("btm_ble_link_encrypted encr_enable=%d", encr_enable);

    enc_cback = (p_dev_rec->sec_state == BTM_SEC_STATE_ENCRYPTING);

    FUNC5(bd_addr, encr_enable);

    FUNC0(" p_dev_rec->sec_flags=0x%x", p_dev_rec->sec_flags);

    if (encr_enable && p_dev_rec->enc_key_size == 0) {
        p_dev_rec->enc_key_size = p_dev_rec->ble.keys.key_size;
    }

    p_dev_rec->sec_state = BTM_SEC_STATE_IDLE;
    if (p_dev_rec->p_callback && enc_cback) {
        if (encr_enable) {
            FUNC3(p_dev_rec, BTM_SUCCESS, TRUE);
        } else if (p_dev_rec->role_master) {
            FUNC3(p_dev_rec, BTM_ERR_PROCESSING, TRUE);
        }

    }
    /* to notify GATT to send data if any request is pending */
    FUNC4(p_dev_rec->ble.pseudo_addr);
}