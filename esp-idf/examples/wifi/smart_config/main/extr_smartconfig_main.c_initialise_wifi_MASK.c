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
 int /*<<< orphan*/  IP_EVENT ; 
 int /*<<< orphan*/  IP_EVENT_STA_GOT_IP ; 
 int /*<<< orphan*/  SC_EVENT ; 
 int /*<<< orphan*/  WIFI_EVENT ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  WIFI_MODE_STA ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  event_handler ; 
 int /*<<< orphan*/  s_wifi_event_group ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static void FUNC11(void)
{
    FUNC6();
    s_wifi_event_group = FUNC10();
    FUNC0(FUNC4());
    esp_netif_t *sta_netif = FUNC5();
    FUNC2(sta_netif);

    wifi_init_config_t cfg = FUNC1();
    FUNC0( FUNC7(&cfg) );

    FUNC0( FUNC3(WIFI_EVENT, ESP_EVENT_ANY_ID, &event_handler, NULL) );
    FUNC0( FUNC3(IP_EVENT, IP_EVENT_STA_GOT_IP, &event_handler, NULL) );
    FUNC0( FUNC3(SC_EVENT, ESP_EVENT_ANY_ID, &event_handler, NULL) );

    FUNC0( FUNC8(WIFI_MODE_STA) );
    FUNC0( FUNC9() );
}