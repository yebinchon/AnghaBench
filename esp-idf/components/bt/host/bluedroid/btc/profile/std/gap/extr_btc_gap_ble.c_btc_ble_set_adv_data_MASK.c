#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tBTA_SET_ADV_DATA_CMPL_CBACK ;
typedef  int /*<<< orphan*/  tBTA_BLE_AD_MASK ;
struct TYPE_4__ {int /*<<< orphan*/  set_scan_rsp; } ;
typedef  TYPE_1__ esp_ble_adv_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  gl_bta_adv_data ; 
 int /*<<< orphan*/  gl_bta_scan_rsp_data ; 

__attribute__((used)) static void FUNC3(esp_ble_adv_data_t *adv_data,
                                 tBTA_SET_ADV_DATA_CMPL_CBACK p_adv_data_cback)
{
    tBTA_BLE_AD_MASK data_mask = 0;

    if (!adv_data->set_scan_rsp) {
    	FUNC2(adv_data, &gl_bta_adv_data, &data_mask);
        FUNC0(data_mask, &gl_bta_adv_data, p_adv_data_cback);
    } else {
    	FUNC2(adv_data, &gl_bta_scan_rsp_data, &data_mask);
        FUNC1(data_mask, &gl_bta_scan_rsp_data, p_adv_data_cback);
    }
}