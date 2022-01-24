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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 

esp_netif_t* FUNC4(esp_netif_t* netif)
{
    esp_err_t ret;
    esp_netif_t* result;
    if ((ret = FUNC1()) != ESP_OK) {
        FUNC0(TAG, "Failed to lock esp-netif list with %d", ret);
        return NULL;
    }
    result = FUNC3(netif);
    FUNC2();
    return result;
}