#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_9__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tBTM_STATUS ;
struct TYPE_11__ {int /*<<< orphan*/  own_addr_type; } ;
typedef  TYPE_2__ tBTM_LE_RANDOM_CB ;
struct TYPE_12__ {scalar_t__ adv_mode; int /*<<< orphan*/  afp; int /*<<< orphan*/  adv_chnl_map; int /*<<< orphan*/  evt_type; void* adv_interval_max; void* adv_interval_min; int /*<<< orphan*/  direct_bda; } ;
typedef  TYPE_3__ tBTM_BLE_INQ_CB ;
typedef  int /*<<< orphan*/  tBTM_BLE_ADV_CHNL_MAP ;
typedef  int /*<<< orphan*/  tBLE_BD_ADDR ;
typedef  int /*<<< orphan*/  tBLE_ADDR_TYPE ;
typedef  scalar_t__ UINT8 ;
typedef  void* UINT16 ;
struct TYPE_10__ {TYPE_3__ inq_var; TYPE_2__ addr_mgnt_cb; } ;
struct TYPE_15__ {TYPE_1__ ble_ctr_cb; } ;
struct TYPE_14__ {int /*<<< orphan*/  (* supports_ble ) () ;} ;
struct TYPE_13__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_4__ BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  BLE_ADDR_PUBLIC ; 
 scalar_t__ BTM_BLE_ADV_ENABLE ; 
 int /*<<< orphan*/  BTM_BLE_ADV_INT_MAX ; 
 int /*<<< orphan*/  BTM_BLE_ADV_INT_MIN ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BTM_ILLEGAL_VALUE ; 
 int /*<<< orphan*/  BTM_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_9__ btm_cb ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_4__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (void*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 

tBTM_STATUS FUNC9(UINT16 adv_int_min, UINT16 adv_int_max,
                                tBLE_BD_ADDR *p_dir_bda,
                                tBTM_BLE_ADV_CHNL_MAP chnl_map)
{
    tBTM_LE_RANDOM_CB *p_addr_cb = &btm_cb.ble_ctr_cb.addr_mgnt_cb;
    tBTM_BLE_INQ_CB *p_cb = &btm_cb.ble_ctr_cb.inq_var;
    tBTM_STATUS status = BTM_SUCCESS;
    BD_ADDR     p_addr_ptr =  {0};
    tBLE_ADDR_TYPE   init_addr_type = BLE_ADDR_PUBLIC;
    tBLE_ADDR_TYPE   own_addr_type = p_addr_cb->own_addr_type;
    UINT8            adv_mode = p_cb->adv_mode;

    FUNC1 ("BTM_BleSetAdvParams");

    if (!FUNC6()->supports_ble()) {
        return BTM_ILLEGAL_VALUE;
    }

    if (!FUNC0(adv_int_min, BTM_BLE_ADV_INT_MIN, BTM_BLE_ADV_INT_MAX) ||
            !FUNC0(adv_int_max, BTM_BLE_ADV_INT_MIN, BTM_BLE_ADV_INT_MAX)) {
        return BTM_ILLEGAL_VALUE;
    }

    p_cb->adv_interval_min = adv_int_min;
    p_cb->adv_interval_max = adv_int_max;
    p_cb->adv_chnl_map = chnl_map;

    if (p_dir_bda) {
        FUNC7(&p_cb->direct_bda, p_dir_bda, sizeof(tBLE_BD_ADDR));
    }

    FUNC1 ("update params for an active adv\n");

    FUNC3();

    p_cb->evt_type = FUNC4(p_cb, p_addr_ptr, &init_addr_type,
                     &own_addr_type);

    /* update adv params */
    FUNC5 (p_cb->adv_interval_min,
                                     p_cb->adv_interval_max,
                                     p_cb->evt_type,
                                     own_addr_type,
                                     init_addr_type,
                                     p_addr_ptr,
                                     p_cb->adv_chnl_map,
                                     p_cb->afp);

    if (adv_mode == BTM_BLE_ADV_ENABLE) {
        FUNC2();
    }

    return status;
}