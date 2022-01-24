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
typedef  int /*<<< orphan*/  esp_netif_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESP_EVENT_ANY_ID ; 
 int /*<<< orphan*/  ESP_LOG_WARN ; 
 int /*<<< orphan*/  IP_EVENT ; 
 int /*<<< orphan*/  IP_EVENT_STA_GOT_IP ; 
 int /*<<< orphan*/  WIFI_EVENT ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  WIFI_MODE_STA ; 
 int /*<<< orphan*/  WIFI_PS_MIN_MODEM ; 
 int /*<<< orphan*/  WIFI_STORAGE_RAM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  ip_event_handler ; 
 int /*<<< orphan*/  wifi_event_group ; 
 int /*<<< orphan*/  wifi_event_handler ; 
 int /*<<< orphan*/  FUNC14 () ; 

void FUNC15(void)
{
    FUNC5("wifi", ESP_LOG_WARN);
    static bool initialized = false;

    if (initialized) {
        return;
    }

    FUNC8();
    wifi_event_group = FUNC14();
    FUNC0(FUNC4());
    esp_netif_t *sta_netif = FUNC7();
    FUNC2(sta_netif);
    esp_netif_t *ap_netif = FUNC6();
    FUNC2(ap_netif);
    FUNC0(FUNC3(WIFI_EVENT, ESP_EVENT_ANY_ID, &wifi_event_handler, NULL));
    FUNC0(FUNC3(IP_EVENT, IP_EVENT_STA_GOT_IP, &ip_event_handler, NULL));

    wifi_init_config_t cfg = FUNC1();
    FUNC0( FUNC9(&cfg) );
    FUNC0( FUNC11(WIFI_PS_MIN_MODEM) ); //must call this
    FUNC0( FUNC12(WIFI_STORAGE_RAM) );
    FUNC0( FUNC10(WIFI_MODE_STA) );
    FUNC0( FUNC13() );
    initialized = true;
}