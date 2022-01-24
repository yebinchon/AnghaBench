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
typedef  int /*<<< orphan*/  wifi_init_config_t ;
typedef  scalar_t__ esp_err_t ;
typedef  int /*<<< orphan*/  SemaphoreHandle_t ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 scalar_t__ ESP_ERR_NVS_NEW_VERSION_FOUND ; 
 scalar_t__ ESP_ERR_NVS_NO_FREE_PAGES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 () ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(void* arg)
{
    SemaphoreHandle_t *sema = (SemaphoreHandle_t *) arg;
    wifi_init_config_t cfg = FUNC3();
    //init nvs
    FUNC1(TAG, FUNC0("nvs_flash_init"));
    esp_err_t r = FUNC9();
    if (r == ESP_ERR_NVS_NO_FREE_PAGES || r == ESP_ERR_NVS_NEW_VERSION_FOUND) {
        FUNC1(TAG, FUNC0("no free pages or NFS version mismatch, erase.."));
        FUNC2(FUNC8());
        r = FUNC9();
    }
    FUNC2(r);
    //init event loop
    FUNC1(TAG, FUNC0("event_init"));
    FUNC6();
    FUNC10();
    FUNC1(TAG, FUNC0("esp_wifi_init"));
    FUNC2(FUNC5(&cfg));
    FUNC1(TAG, FUNC0("esp_wifi_deinit..."));
    FUNC2(FUNC4());
    FUNC1(TAG, FUNC0("nvs_flash_deinit..."));
    FUNC7();
    FUNC1(TAG, "test passed...");
    FUNC12(*sema);
    FUNC11(NULL);
}