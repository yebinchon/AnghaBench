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
struct TYPE_2__ {int sm_bonding; int sm_mitm; int sm_sc; int sm_our_key_dist; int sm_their_key_dist; int /*<<< orphan*/  sm_io_cap; int /*<<< orphan*/  store_status_cb; int /*<<< orphan*/  gatts_register_cb; int /*<<< orphan*/  sync_cb; int /*<<< orphan*/  reset_cb; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_EXAMPLE_IO_TYPE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ ESP_ERR_NVS_NEW_VERSION_FOUND ; 
 scalar_t__ ESP_ERR_NVS_NO_FREE_PAGES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int ESP_OK ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_1__ ble_hs_cfg ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  ble_store_util_status_rr ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  bleprph_host_task ; 
 int /*<<< orphan*/  bleprph_on_reset ; 
 int /*<<< orphan*/  bleprph_on_sync ; 
 scalar_t__ FUNC5 () ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  gatt_svr_register_cb ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 () ; 
 scalar_t__ FUNC10 () ; 
 int FUNC11 () ; 
 int /*<<< orphan*/  tag ; 

void
FUNC12(void)
{
    int rc;

    /* Initialize NVS — it is used to store PHY calibration data */
    esp_err_t ret = FUNC10();
    if (ret == ESP_ERR_NVS_NO_FREE_PAGES || ret == ESP_ERR_NVS_NEW_VERSION_FOUND) {
        FUNC0(FUNC9());
        ret = FUNC10();
    }
    FUNC0(ret);

    FUNC0(FUNC5());

    FUNC8();
    /* Initialize the NimBLE host configuration. */
    ble_hs_cfg.reset_cb = bleprph_on_reset;
    ble_hs_cfg.sync_cb = bleprph_on_sync;
    ble_hs_cfg.gatts_register_cb = gatt_svr_register_cb;
    ble_hs_cfg.store_status_cb = ble_store_util_status_rr;

    ble_hs_cfg.sm_io_cap = CONFIG_EXAMPLE_IO_TYPE;
#ifdef CONFIG_EXAMPLE_BONDING
    ble_hs_cfg.sm_bonding = 1;
#endif
#ifdef CONFIG_EXAMPLE_MITM
    ble_hs_cfg.sm_mitm = 1;
#endif
#ifdef CONFIG_EXAMPLE_USE_SC
    ble_hs_cfg.sm_sc = 1;
#else
    ble_hs_cfg.sm_sc = 0;
#ifdef CONFIG_EXAMPLE_BONDING
    ble_hs_cfg.sm_our_key_dist = 1;
    ble_hs_cfg.sm_their_key_dist = 1;
#endif
#endif


    rc = FUNC6();
    FUNC2(rc == 0);

    /* Set the default device name. */
    rc = FUNC4("nimble-bleprph");
    FUNC2(rc == 0);

    /* XXX Need to have template for store */
    FUNC3();

    FUNC7(bleprph_host_task);

    /* Initialize command line interface to accept input from user */
    rc = FUNC11();
    if (rc != ESP_OK) {
        FUNC1(tag, "scli_init() failed");
    }
}