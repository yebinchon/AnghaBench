#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hidd_le_env_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_3__ {int enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  HID_LE_PRF_TAG ; 
 TYPE_1__ hidd_le_env ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

esp_err_t FUNC2(void)
{
     if (hidd_le_env.enabled) {
        FUNC0(HID_LE_PRF_TAG, "HID device profile already initialized");
        return ESP_FAIL;
    }
    // Reset the hid device target environment
    FUNC1(&hidd_le_env, 0, sizeof(hidd_le_env_t));
    hidd_le_env.enabled = true;
    return ESP_OK;
}