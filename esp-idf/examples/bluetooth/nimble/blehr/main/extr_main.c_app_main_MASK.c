#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ esp_err_t ;
struct TYPE_2__ {int /*<<< orphan*/  reset_cb; int /*<<< orphan*/  sync_cb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ ESP_ERR_NVS_NEW_VERSION_FOUND ; 
 scalar_t__ ESP_ERR_NVS_NO_FREE_PAGES ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__ ble_hs_cfg ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  blehr_host_task ; 
 int /*<<< orphan*/  blehr_on_reset ; 
 int /*<<< orphan*/  blehr_on_sync ; 
 int /*<<< orphan*/  blehr_tx_hrate ; 
 int /*<<< orphan*/  blehr_tx_timer ; 
 int /*<<< orphan*/  device_name ; 
 scalar_t__ FUNC3 () ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 () ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  pdTRUE ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 

void FUNC11(void)
{
    int rc;

    /* Initialize NVS — it is used to store PHY calibration data */
    esp_err_t ret = FUNC8();
    if (ret == ESP_ERR_NVS_NO_FREE_PAGES || ret == ESP_ERR_NVS_NEW_VERSION_FOUND) {
        FUNC0(FUNC7());
        ret = FUNC8();
    }
    FUNC0(ret);

    FUNC0(FUNC3());

    FUNC6();
    /* Initialize the NimBLE host configuration */
    ble_hs_cfg.sync_cb = blehr_on_sync;
    ble_hs_cfg.reset_cb = blehr_on_reset;

    /* name, period/time,  auto reload, timer ID, callback */
    blehr_tx_timer = FUNC10("blehr_tx_timer", FUNC9(1000), pdTRUE, (void *)0, blehr_tx_hrate);

    rc = FUNC4();
    FUNC1(rc == 0);

    /* Set the default device name */
    rc = FUNC2(device_name);
    FUNC1(rc == 0);

    /* Start the task */
    FUNC5(blehr_host_task);

}