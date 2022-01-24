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
 scalar_t__ ESP_ERR_NVS_NEW_VERSION_FOUND ; 
 scalar_t__ ESP_ERR_NVS_NO_FREE_PAGES ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  GPIO_MODE_DEF_INPUT ; 
 int /*<<< orphan*/  GPIO_NUM_0 ; 
 char* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 () ; 
 scalar_t__ FUNC8 () ; 
 int portTICK_PERIOD_MS ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 scalar_t__ FUNC11 () ; 
 scalar_t__ FUNC12 () ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC13 (int) ; 

void FUNC14(void)
{
    esp_err_t err = FUNC8();
    if (err == ESP_ERR_NVS_NO_FREE_PAGES || err == ESP_ERR_NVS_NEW_VERSION_FOUND) {
        // NVS partition was truncated and needs to be erased
        // Retry nvs_flash_init
        FUNC0(FUNC7());
        err = FUNC8();
    }
    FUNC0( err );

    err = FUNC9();
    if (err != ESP_OK) FUNC10("Error (%s) reading data from NVS!\n", FUNC1(err));

    err = FUNC11();
    if (err != ESP_OK) FUNC10("Error (%s) saving restart counter to NVS!\n", FUNC1(err));

    FUNC5(GPIO_NUM_0);
    FUNC6(GPIO_NUM_0, GPIO_MODE_DEF_INPUT);

    /* Read the status of GPIO0. If GPIO0 is LOW for longer than 1000 ms,
       then save module's run time and restart it
     */
    while (1) {
        if (FUNC4(GPIO_NUM_0) == 0) {
            FUNC13(1000 / portTICK_PERIOD_MS);
            if(FUNC4(GPIO_NUM_0) == 0) {
                err = FUNC12();
                if (err != ESP_OK) FUNC10("Error (%s) saving run time blob to NVS!\n", FUNC1(err));
                FUNC10("Restarting...\n");
                FUNC3(stdout);
                FUNC2();
            }
        }
        FUNC13(200 / portTICK_PERIOD_MS);
    }
}