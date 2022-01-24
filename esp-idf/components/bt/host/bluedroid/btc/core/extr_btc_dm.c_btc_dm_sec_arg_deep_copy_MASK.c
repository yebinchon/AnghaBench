#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tBTM_LE_KEY_VALUE ;
struct TYPE_9__ {TYPE_2__* p_key_value; } ;
struct TYPE_10__ {TYPE_1__ ble_key; } ;
typedef  TYPE_2__ tBTA_DM_SEC ;
struct TYPE_11__ {scalar_t__ act; } ;
typedef  TYPE_3__ btc_msg_t ;

/* Variables and functions */
 scalar_t__ BTA_DM_BLE_KEY_EVT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_2__*,int) ; 
 TYPE_2__* FUNC2 (int) ; 

void FUNC3(btc_msg_t *msg, void *dst, void *src)
{
    tBTA_DM_SEC *dst_dm_sec = (tBTA_DM_SEC *)dst;
    tBTA_DM_SEC *src_dm_sec = (tBTA_DM_SEC *)src;

    if (!src_dm_sec) {
        return;
    }

    FUNC0(dst_dm_sec);
    FUNC1(dst_dm_sec, src_dm_sec, sizeof(tBTA_DM_SEC));

    if (msg->act == BTA_DM_BLE_KEY_EVT) {
        dst_dm_sec->ble_key.p_key_value = FUNC2(sizeof(tBTM_LE_KEY_VALUE));
        FUNC0(src_dm_sec->ble_key.p_key_value);
        FUNC0(dst_dm_sec->ble_key.p_key_value);
        FUNC1(dst_dm_sec->ble_key.p_key_value, src_dm_sec->ble_key.p_key_value, sizeof(tBTM_LE_KEY_VALUE));
    }
}