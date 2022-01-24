#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_3__ {scalar_t__* att_tbl; } ;
struct TYPE_4__ {int /*<<< orphan*/  gatt_if; int /*<<< orphan*/  enabled; TYPE_1__ hidd_inst; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ESP_OK ; 
 size_t HIDD_LE_IDX_SVC ; 
 int /*<<< orphan*/  HID_LE_PRF_TAG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 TYPE_2__ hidd_le_env ; 

esp_err_t FUNC4(void)
{
    uint16_t hidd_svc_hdl = hidd_le_env.hidd_inst.att_tbl[HIDD_LE_IDX_SVC];
    if (!hidd_le_env.enabled) {
        FUNC0(HID_LE_PRF_TAG, "HID device profile already initialized");
        return ESP_OK;
    }

    if(hidd_svc_hdl != 0) {
	FUNC3(hidd_svc_hdl);
	FUNC2(hidd_svc_hdl);
    } else {
	return ESP_FAIL;
   }
    
    /* register the HID device profile to the BTA_GATTS module*/
    FUNC1(hidd_le_env.gatt_if);

    return ESP_OK;
}