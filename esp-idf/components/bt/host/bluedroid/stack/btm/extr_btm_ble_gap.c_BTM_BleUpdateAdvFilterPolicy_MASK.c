#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_8__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ adv_mode; scalar_t__ afp; int connectable_mode; int /*<<< orphan*/  adv_chnl_map; int /*<<< orphan*/  adv_addr_type; int /*<<< orphan*/  evt_type; scalar_t__ adv_interval_max; scalar_t__ adv_interval_min; } ;
typedef  TYPE_2__ tBTM_BLE_INQ_CB ;
typedef  scalar_t__ tBTM_BLE_AFP ;
typedef  int /*<<< orphan*/  tBLE_ADDR_TYPE ;
typedef  scalar_t__ UINT8 ;
typedef  int /*<<< orphan*/  UINT16 ;
struct TYPE_9__ {TYPE_2__ inq_var; } ;
struct TYPE_13__ {TYPE_1__ ble_ctr_cb; } ;
struct TYPE_12__ {int /*<<< orphan*/  (* supports_ble ) () ;} ;
struct TYPE_11__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_3__ BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  BLE_ADDR_PUBLIC ; 
 scalar_t__ BTM_BLE_ADV_ENABLE ; 
 int BTM_BLE_CONNECTABLE ; 
 scalar_t__ BTM_BLE_GAP_ADV_SLOW_INT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_8__ btm_cb ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_3__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__,int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_4__* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

void FUNC7(tBTM_BLE_AFP adv_policy)
{
    tBTM_BLE_INQ_CB *p_cb = &btm_cb.ble_ctr_cb.inq_var;
    tBLE_ADDR_TYPE   init_addr_type = BLE_ADDR_PUBLIC;
    BD_ADDR          p_addr_ptr = {0};
    UINT8            adv_mode = p_cb->adv_mode;

    FUNC0 ("BTM_BleUpdateAdvFilterPolicy\n");

    if (!FUNC5()->supports_ble()) {
        return;
    }

    if (p_cb->afp != adv_policy) {
        p_cb->afp = adv_policy;

        /* if adv active, stop and restart */
        FUNC2 ();

        if (p_cb->connectable_mode & BTM_BLE_CONNECTABLE) {
            p_cb->evt_type = FUNC3(p_cb, p_addr_ptr, &init_addr_type,
                             &p_cb->adv_addr_type);
        }

        FUNC4 ((UINT16)(p_cb->adv_interval_min ? p_cb->adv_interval_min :
                                         BTM_BLE_GAP_ADV_SLOW_INT),
                                         (UINT16)(p_cb->adv_interval_max ? p_cb->adv_interval_max :
                                                 BTM_BLE_GAP_ADV_SLOW_INT),
                                         p_cb->evt_type,
                                         p_cb->adv_addr_type,
                                         init_addr_type,
                                         p_addr_ptr,
                                         p_cb->adv_chnl_map,
                                         p_cb->afp);

        if (adv_mode == BTM_BLE_ADV_ENABLE) {
            FUNC1 ();
        }

    }
}