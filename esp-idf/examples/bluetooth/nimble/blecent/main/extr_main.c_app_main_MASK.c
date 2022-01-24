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
struct TYPE_2__ {int /*<<< orphan*/  store_status_cb; int /*<<< orphan*/  sync_cb; int /*<<< orphan*/  reset_cb; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLE_MAX_CONNECTIONS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ ESP_ERR_NVS_NEW_VERSION_FOUND ; 
 scalar_t__ ESP_ERR_NVS_NO_FREE_PAGES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_1__ ble_hs_cfg ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  ble_store_util_status_rr ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  blecent_host_task ; 
 int /*<<< orphan*/  blecent_on_reset ; 
 int /*<<< orphan*/  blecent_on_sync ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 () ; 
 scalar_t__ FUNC9 () ; 
 int FUNC10 (int /*<<< orphan*/ ,int,int,int) ; 

void
FUNC11(void)
{
    int rc;
    /* Initialize NVS — it is used to store PHY calibration data */
    esp_err_t ret = FUNC9();
    if  (ret == ESP_ERR_NVS_NO_FREE_PAGES || ret == ESP_ERR_NVS_NEW_VERSION_FOUND) {
        FUNC0(FUNC8());
        ret = FUNC9();
    }
    FUNC0(ret);

    FUNC0(FUNC5());

    FUNC7();
    /* Configure the host. */
    ble_hs_cfg.reset_cb = blecent_on_reset;
    ble_hs_cfg.sync_cb = blecent_on_sync;
    ble_hs_cfg.store_status_cb = ble_store_util_status_rr;

    /* Initialize data structures to track connected peers. */
    rc = FUNC10(FUNC1(BLE_MAX_CONNECTIONS), 64, 64, 64);
    FUNC2(rc == 0);

    /* Set the default device name. */
    rc = FUNC4("nimble-blecent");
    FUNC2(rc == 0);

    /* XXX Need to have template for store */
    FUNC3();

    FUNC6(blecent_host_task);

}