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
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

esp_err_t FUNC4(void)
{
    esp_err_t err = ESP_OK;

    FUNC1();
    err = FUNC2();
    if (err != ESP_OK) {
        FUNC0(TAG, "Failed to deinit Wi-Fi driver (0x%x)", err);
    }

#if CONFIG_ESP_NETIF_TCPIP_ADAPTER_COMPATIBLE_LAYER
    tcpip_adapter_clear_default_wifi_handlers();
#endif

    return err;
}