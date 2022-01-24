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
typedef  int /*<<< orphan*/  nvs_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  DHCP_NAMESPACE ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  NVS_READWRITE ; 
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC6(void *esp_netif)
{
    nvs_handle_t nvs;

    if(FUNC0(esp_netif)) {
        if (FUNC5(DHCP_NAMESPACE, NVS_READWRITE, &nvs) == ESP_OK) {
            FUNC4(nvs, FUNC1(esp_netif));
            FUNC3(nvs);
            FUNC2(nvs);
        }
    }
}