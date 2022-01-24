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
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 () ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 scalar_t__ FUNC12 () ; 
 scalar_t__ FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC17(void* arg)
{
    SemaphoreHandle_t *sema = (SemaphoreHandle_t *) arg;
    wifi_init_config_t cfg = FUNC4();
    //init nvs
    FUNC1(TAG, FUNC0("nvs_flash_init"));
    esp_err_t r = FUNC13();
    if (r == ESP_ERR_NVS_NO_FREE_PAGES || r == ESP_ERR_NVS_NEW_VERSION_FOUND) {
	    FUNC1(TAG, FUNC0("no free pages or NFS version mismatch, erase.."));
	    FUNC3(FUNC12());
	    r = FUNC13();
    }
    FUNC3(r);
    //init tcpip stack
    FUNC1(TAG, FUNC0("esp_netif_init"));
    FUNC5();
    //init event loop
    FUNC1(TAG, FUNC0("event_init"));
    FUNC10();
    FUNC14();
    FUNC1(TAG, FUNC0("esp_wifi_init"));
    FUNC2(FUNC7(&cfg) == ESP_OK);
    FUNC1(TAG, FUNC0("esp_wifi_start"));
    FUNC2(FUNC8() == ESP_OK);
    FUNC1(TAG, FUNC0("esp_wifi_stop"));
    FUNC2(FUNC9() == ESP_OK);
    FUNC1(TAG, FUNC0("esp_wifi_stop"));
    FUNC2(FUNC9() == ESP_OK);
    FUNC1(TAG, FUNC0("esp_wifi_deinit"));
    FUNC2(FUNC6() == ESP_OK);
    FUNC1(TAG, FUNC0("nvs_flash_deinit..."));
    FUNC11();
    FUNC1(TAG, "test passed...");
    FUNC16(*sema);
    FUNC15(NULL);
}