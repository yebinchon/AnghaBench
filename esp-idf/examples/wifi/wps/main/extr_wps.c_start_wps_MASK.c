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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  IP_EVENT ; 
 int /*<<< orphan*/  IP_EVENT_STA_GOT_IP ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  WIFI_EVENT ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  WIFI_MODE_STA ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  config ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  got_ip_event_handler ; 
 int /*<<< orphan*/  wifi_event_handler ; 

__attribute__((used)) static void FUNC13(void)
{
    FUNC7();
    FUNC0(FUNC5());
    esp_netif_t *sta_netif = FUNC6();
    FUNC3(sta_netif);

    wifi_init_config_t cfg = FUNC2();
    FUNC0(FUNC8(&cfg));

    FUNC0(FUNC4(WIFI_EVENT, ESP_EVENT_ANY_ID, &wifi_event_handler, NULL));
    FUNC0(FUNC4(IP_EVENT, IP_EVENT_STA_GOT_IP, &got_ip_event_handler, NULL));

    FUNC0(FUNC9(WIFI_MODE_STA));
    FUNC0(FUNC10());

    FUNC1(TAG, "start wps...");

    FUNC0(FUNC11(&config));
    FUNC0(FUNC12(0));
}