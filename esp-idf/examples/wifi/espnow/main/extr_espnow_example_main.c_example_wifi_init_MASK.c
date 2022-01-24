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

/* Variables and functions */
 int /*<<< orphan*/  ESPNOW_WIFI_IF ; 
 int /*<<< orphan*/  ESPNOW_WIFI_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int WIFI_PROTOCOL_11B ; 
 int WIFI_PROTOCOL_11G ; 
 int WIFI_PROTOCOL_11N ; 
 int WIFI_PROTOCOL_LR ; 
 int /*<<< orphan*/  WIFI_STORAGE_RAM ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static void FUNC9(void)
{
    FUNC3();
    FUNC0(FUNC2());
    wifi_init_config_t cfg = FUNC1();
    FUNC0( FUNC4(&cfg) );
    FUNC0( FUNC7(WIFI_STORAGE_RAM) );
    FUNC0( FUNC5(ESPNOW_WIFI_MODE) );
    FUNC0( FUNC8());

#if CONFIG_ESPNOW_ENABLE_LONG_RANGE
    ESP_ERROR_CHECK( esp_wifi_set_protocol(ESPNOW_WIFI_IF, WIFI_PROTOCOL_11B|WIFI_PROTOCOL_11G|WIFI_PROTOCOL_11N|WIFI_PROTOCOL_LR) );
#endif
}