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
typedef  int /*<<< orphan*/  esp_netif_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 size_t WIFI_IF_AP ; 
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** s_wifi_netifs ; 

esp_err_t FUNC1(esp_netif_t *esp_netif)
{
    if (esp_netif == NULL) {
        return ESP_ERR_INVALID_ARG;
    }
    s_wifi_netifs[WIFI_IF_AP] = esp_netif;
    return FUNC0(WIFI_IF_AP, esp_netif);
}