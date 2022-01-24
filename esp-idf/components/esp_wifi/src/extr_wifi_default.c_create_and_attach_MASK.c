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
typedef  int /*<<< orphan*/ * wifi_netif_driver_t ;
typedef  int /*<<< orphan*/  wifi_interface_t ;
typedef  int /*<<< orphan*/  esp_netif_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static esp_err_t FUNC3(wifi_interface_t wifi_if, esp_netif_t* esp_netif)
{
    wifi_netif_driver_t driver = FUNC2(wifi_if);
    if (driver == NULL) {
        FUNC0(TAG, "Failed to create wifi interface handle");
        return ESP_FAIL;
    }
    return FUNC1(esp_netif, driver);
}