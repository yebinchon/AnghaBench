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
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ ESP_ERR_NVS_NO_FREE_PAGES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  dev_uuid ; 
 scalar_t__ FUNC7 () ; 
 scalar_t__ FUNC8 () ; 

void FUNC9(void)
{
    esp_err_t err;

    FUNC2(TAG, "Initializing...");

    FUNC6();

    err = FUNC8();
    if (err == ESP_ERR_NVS_NO_FREE_PAGES) {
        FUNC0(FUNC7());
        err = FUNC8();
    }
    FUNC0(err);

    err = FUNC5();
    if (err) {
        FUNC1(TAG, "esp32_bluetooth_init failed (err %d)", err);
        return;
    }

    FUNC3(dev_uuid);

    /* Initialize the Bluetooth Mesh Subsystem */
    err = FUNC4();
    if (err) {
        FUNC1(TAG, "Bluetooth mesh init failed (err %d)", err);
    }
}