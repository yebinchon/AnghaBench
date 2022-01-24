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
typedef  int /*<<< orphan*/  wifi_netif_driver_t ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  esp_netif_t ;
typedef  int /*<<< orphan*/  esp_event_base_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  TAG ; 
 size_t WIFI_IF_STA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  esp_netif_receive ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** s_wifi_netifs ; 

__attribute__((used)) static void FUNC5(void *arg, esp_event_base_t base, int32_t event_id, void *data)
{
    if (s_wifi_netifs[WIFI_IF_STA] != NULL) {
        esp_err_t ret;
        esp_netif_t *esp_netif = s_wifi_netifs[WIFI_IF_STA];
        wifi_netif_driver_t driver = FUNC2(esp_netif);

        if (!FUNC3(driver)) {
            // if interface not ready when started, rxcb to be registered on connection
            if ((ret = FUNC4(driver,  esp_netif_receive, esp_netif)) != ESP_OK) {
                FUNC0(TAG, "esp_wifi_register_if_rxcb for if=%p failed with %d", driver, ret);
                return;
            }
        }

        FUNC1(s_wifi_netifs[WIFI_IF_STA], base, event_id, data);
    }
}