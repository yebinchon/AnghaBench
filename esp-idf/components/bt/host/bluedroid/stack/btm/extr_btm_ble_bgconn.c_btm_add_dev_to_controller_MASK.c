#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ tBLE_ADDR_TYPE ;
typedef  scalar_t__ BOOLEAN ;
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 scalar_t__ BLE_ADDR_RANDOM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FALSE ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 

BOOLEAN FUNC3 (BOOLEAN to_add, BD_ADDR bd_addr, tBLE_ADDR_TYPE wl_addr_type)
{
    /*
    tBTM_SEC_DEV_REC    *p_dev_rec = btm_find_dev (bd_addr);
    tBLE_ADDR_TYPE  addr_type = BLE_ADDR_PUBLIC;
    BOOLEAN             started = FALSE;
    BD_ADDR             dummy_bda = {0};
    tBT_DEVICE_TYPE dev_type;

    if (p_dev_rec != NULL &&
            p_dev_rec->device_type & BT_DEVICE_TYPE_BLE) {
        if (to_add) {
            if (p_dev_rec->ble.ble_addr_type == BLE_ADDR_PUBLIC || !BTM_BLE_IS_RESOLVE_BDA(bd_addr)) {
                started = btsnd_hcic_ble_add_white_list (p_dev_rec->ble.ble_addr_type, bd_addr);
                p_dev_rec->ble.in_controller_list |= BTM_WHITE_LIST_BIT;
            } else if (memcmp(p_dev_rec->ble.static_addr, bd_addr, BD_ADDR_LEN) != 0 &&
                       memcmp(p_dev_rec->ble.static_addr, dummy_bda, BD_ADDR_LEN) != 0) {
                started = btsnd_hcic_ble_add_white_list (p_dev_rec->ble.static_addr_type,
                          p_dev_rec->ble.static_addr);
                p_dev_rec->ble.in_controller_list |= BTM_WHITE_LIST_BIT;
            }
        } else {
            if (p_dev_rec->ble.ble_addr_type == BLE_ADDR_PUBLIC || !BTM_BLE_IS_RESOLVE_BDA(bd_addr)) {
                started = btsnd_hcic_ble_remove_from_white_list (p_dev_rec->ble.ble_addr_type, bd_addr);
            }
            if (memcmp(p_dev_rec->ble.static_addr, dummy_bda, BD_ADDR_LEN) != 0 &&
                    memcmp(p_dev_rec->ble.static_addr, bd_addr, BD_ADDR_LEN) != 0) {
                started = btsnd_hcic_ble_remove_from_white_list (p_dev_rec->ble.static_addr_type, p_dev_rec->ble.static_addr);
            }
            p_dev_rec->ble.in_controller_list &= ~BTM_WHITE_LIST_BIT;
        }
    }    // if not a known device, shall we add it? 
    else {
        BTM_ReadDevInfo(bd_addr, &dev_type, &addr_type);

        if (to_add) {
            started = btsnd_hcic_ble_add_white_list (addr_type, bd_addr);
        }else{
            started = btsnd_hcic_ble_remove_from_white_list (addr_type, bd_addr);
        }
    }

    return started;
    */

    /* Controller do not support resolvable address now, only support public address and static random address */
    BOOLEAN  started = FALSE;
    if(wl_addr_type > BLE_ADDR_RANDOM) {
        FUNC0("wl_addr_type is error\n");
        return started;
    }

    if (to_add) {
        started = FUNC1 (wl_addr_type, bd_addr);
    }else{
        started = FUNC2 (wl_addr_type, bd_addr);
    }

    return started;


}