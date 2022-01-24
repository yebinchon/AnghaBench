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
typedef  int /*<<< orphan*/  wifi_config_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ESP_ERR_WIFI_NOT_INIT ; 
 int /*<<< orphan*/  ESP_IF_WIFI_STA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WIFI_MODE_STA ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static void FUNC10(wifi_init_config_t *cfg, wifi_config_t* wifi_config)
{
    FUNC1(TAG, FUNC0("esp_wifi_stop"));
    FUNC2(ESP_ERR_WIFI_NOT_INIT, FUNC9());
    FUNC1(TAG, FUNC0("esp_wifi_init"));
    FUNC3(FUNC5(cfg));
    FUNC1(TAG, FUNC0("esp_wifi_set_mode"));
    FUNC3(FUNC7(WIFI_MODE_STA));
    FUNC1(TAG, FUNC0("esp_wifi_set_config"));
    FUNC3(FUNC6(ESP_IF_WIFI_STA, wifi_config));
    //now start wifi
    FUNC1(TAG, FUNC0("esp_wifi_start..."));
    FUNC3(FUNC8());
    //wifi stop
    FUNC1(TAG, FUNC0("esp_wifi_stop..."));
    FUNC3( FUNC9() );
    FUNC1(TAG, FUNC0("esp_wifi_deinit..."));
    FUNC3(FUNC4());
}