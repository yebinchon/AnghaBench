#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tBTM_BLE_BATCH_SCAN_CB ;
typedef  int /*<<< orphan*/  tBTM_BLE_ADV_TRACK_CB ;
struct TYPE_5__ {int /*<<< orphan*/ ** p_data; } ;
struct TYPE_6__ {TYPE_1__ main_rep_q; } ;

/* Variables and functions */
 int BTM_BLE_BATCH_REP_MAIN_Q_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_2__ ble_advtrack_cb ; 
 int /*<<< orphan*/ * ble_advtrack_cb_ptr ; 
 TYPE_2__ ble_batchscan_cb ; 
 int /*<<< orphan*/ * ble_batchscan_cb_ptr ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(void)
{
    int index = 0;
    FUNC0 (" btm_ble_batchscan_cleanup");

    for (index = 0; index < BTM_BLE_BATCH_REP_MAIN_Q_SIZE; index++) {
        if (NULL != ble_batchscan_cb.main_rep_q.p_data[index]) {
            FUNC2(ble_batchscan_cb.main_rep_q.p_data[index]);
            ble_batchscan_cb.main_rep_q.p_data[index] = NULL;
        }
    }

    FUNC1(&ble_batchscan_cb, 0, sizeof(tBTM_BLE_BATCH_SCAN_CB));
    FUNC1(&ble_advtrack_cb, 0, sizeof(tBTM_BLE_ADV_TRACK_CB));

#if BTM_DYNAMIC_MEMORY == TRUE
    FUNC2(ble_batchscan_cb_ptr);
    FUNC2(ble_advtrack_cb_ptr);
    ble_batchscan_cb_ptr = NULL;
    ble_advtrack_cb_ptr = NULL;
#endif
}