#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  white_list_avail_size; } ;
typedef  TYPE_1__ tBTM_BLE_CB ;
typedef  scalar_t__ UINT8 ;
typedef  int /*<<< orphan*/  UINT16 ;
struct TYPE_6__ {TYPE_1__ ble_ctr_cb; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* get_ble_white_list_size ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ HCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__ btm_cb ; 
 TYPE_2__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(UINT8 *p_data, UINT16 evt_len)
{
    tBTM_BLE_CB *p_cb = &btm_cb.ble_ctr_cb;
    UINT8       status;
    FUNC2(evt_len);

    FUNC0 ("btm_ble_clear_white_list_complete");
    FUNC1  (status, p_data);

    if (status == HCI_SUCCESS) {
        p_cb->white_list_avail_size = FUNC3()->get_ble_white_list_size();
    }
}