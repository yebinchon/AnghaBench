#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  device_name; } ;
typedef  TYPE_1__ simple_ble_cfg_t ;
struct TYPE_8__ {int /*<<< orphan*/  gatts_register_cb; int /*<<< orphan*/  sync_cb; int /*<<< orphan*/  reset_cb; } ;
struct TYPE_7__ {int name_is_complete; int /*<<< orphan*/  name_len; int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TAG ; 
 void* ble_cfg_p ; 
 TYPE_5__ ble_hs_cfg ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  gatt_svr_register_cb ; 
 int /*<<< orphan*/  nimble_host_task ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 TYPE_3__ resp_data ; 
 int /*<<< orphan*/  simple_ble_on_reset ; 
 int /*<<< orphan*/  simple_ble_on_sync ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 

__attribute__((used)) static int FUNC12(const simple_ble_cfg_t *cfg)
{
    ble_cfg_p = (void *)cfg;
    int rc;
    FUNC1(TAG, "Free mem at start of simple_ble_init %d", FUNC6());

    FUNC0(FUNC7());
    FUNC10();

    /* Initialize the NimBLE host configuration. */
    ble_hs_cfg.reset_cb = simple_ble_on_reset;
    ble_hs_cfg.sync_cb = simple_ble_on_sync;
    ble_hs_cfg.gatts_register_cb = gatt_svr_register_cb;

    rc = FUNC8(cfg);
    if (rc != 0) {
        FUNC2(TAG, "Error initializing GATT server");
        return rc;
    }

    /* Set device name, configure response data to be sent while advertising */
    rc = FUNC5(cfg->device_name);
    if (rc != 0) {
        FUNC2(TAG, "Error setting device name");
        return rc;
    }

    resp_data.name = (void *) FUNC4();
    if (resp_data.name != NULL) {
        resp_data.name_len = FUNC11(FUNC4());
        resp_data.name_is_complete = 1;
    }

    /* XXX Need to have template for store */
    FUNC3();
    FUNC9(nimble_host_task);

    return 0;
}