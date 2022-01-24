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
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 scalar_t__ ESP_ERR_NVS_NEW_VERSION_FOUND ; 
 scalar_t__ ESP_ERR_NVS_NO_FREE_PAGES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PHY_BT_MODULE ; 
 int /*<<< orphan*/  PHY_WIFI_MODULE ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 () ; 

__attribute__((used)) static void FUNC7(void)
{
    esp_err_t ret = FUNC6();
    if (ret == ESP_ERR_NVS_NO_FREE_PAGES || ret == ESP_ERR_NVS_NEW_VERSION_FOUND) {
        FUNC0(TAG, "no free pages or nvs version mismatch, erase..");
        FUNC2(FUNC5());
        ret = FUNC6();
    }
    FUNC2(ret);

#ifdef SOC_BT_SUPPORTED
    esp_phy_load_cal_and_init(PHY_BT_MODULE);
#endif
    FUNC3(PHY_WIFI_MODULE);

    //must run here, not blocking in above code
    FUNC1(1);
    FUNC4();
}