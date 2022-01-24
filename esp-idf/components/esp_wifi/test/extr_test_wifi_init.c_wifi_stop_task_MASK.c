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
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 () ; 
 scalar_t__ FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(void* arg)
{
    SemaphoreHandle_t *sema = (SemaphoreHandle_t *) arg;
    wifi_init_config_t cfg = FUNC4();
    //init nvs
    FUNC1(TAG, FUNC0("nvs_flash_init"));
    esp_err_t r = FUNC11();
    if (r == ESP_ERR_NVS_NO_FREE_PAGES || r == ESP_ERR_NVS_NEW_VERSION_FOUND) {
        FUNC1(TAG, FUNC0("no free pages or NFS version mismatch, erase.."));
        FUNC3(FUNC10());
        r = FUNC11();
    }
    FUNC3(r);
    //init event loop
    FUNC1(TAG, FUNC0("event_init"));
    FUNC8();
    FUNC12();
    FUNC1(TAG, FUNC0("esp_wifi_init"));
    FUNC2(FUNC6(&cfg) == ESP_OK);
    FUNC1(TAG, FUNC0("esp_wifi_stop"));
    FUNC2(FUNC7() == ESP_OK);
    FUNC1(TAG, FUNC0("esp_wifi_stop"));
    FUNC2(FUNC7() == ESP_OK);
    FUNC1(TAG, FUNC0("esp_wifi_deinit"));
    FUNC2(FUNC5() == ESP_OK);
    FUNC1(TAG, FUNC0("nvs_flash_deinit..."));
    FUNC9();
    FUNC1(TAG, "test passed...");
    FUNC14(*sema);
    FUNC13(NULL);
}