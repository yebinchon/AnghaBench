#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int* p_flags; } ;
typedef  TYPE_3__ tBTM_BLE_LOCAL_ADV_DATA ;
typedef  int UINT8 ;
typedef  int UINT16 ;
struct TYPE_5__ {TYPE_3__ adv_data; } ;
struct TYPE_6__ {TYPE_1__ inq_var; } ;
struct TYPE_8__ {TYPE_2__ ble_ctr_cb; } ;

/* Variables and functions */
 int BTM_BLE_GENERAL_DISCOVERABLE ; 
 int BTM_BLE_GEN_DISC_FLAG ; 
 int BTM_BLE_LIMITED_DISCOVERABLE ; 
 int BTM_BLE_LIMIT_DISC_FLAG ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int,int) ; 
 TYPE_4__ btm_cb ; 

void FUNC4(UINT16 connect_mode, UINT16 disc_mode)
{
    UINT8 flag = 0, old_flag = 0;
    tBTM_BLE_LOCAL_ADV_DATA *p_adv_data = &btm_cb.ble_ctr_cb.inq_var.adv_data;

    if (p_adv_data->p_flags != NULL) {
        flag = old_flag = *(p_adv_data->p_flags);
    }

    FUNC3 (&flag, connect_mode, disc_mode);

    FUNC0("disc_mode %04x", disc_mode);
    /* update discoverable flag */
    if (disc_mode & BTM_BLE_LIMITED_DISCOVERABLE) {
        flag &= ~BTM_BLE_GEN_DISC_FLAG;
        flag |= BTM_BLE_LIMIT_DISC_FLAG;
    } else if (disc_mode & BTM_BLE_GENERAL_DISCOVERABLE) {
        flag |= BTM_BLE_GEN_DISC_FLAG;
        flag &= ~BTM_BLE_LIMIT_DISC_FLAG;
    } else { /* remove all discoverable flags */
        flag &= ~(BTM_BLE_LIMIT_DISC_FLAG | BTM_BLE_GEN_DISC_FLAG);
    }

    if (flag != old_flag) {
        FUNC1("flag = 0x%x,old_flag = 0x%x", flag, old_flag);
        FUNC2(flag);
    }
}