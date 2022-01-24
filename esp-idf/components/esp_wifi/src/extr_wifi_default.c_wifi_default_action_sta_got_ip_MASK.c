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
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  esp_event_base_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int ESP_OK ; 
 int /*<<< orphan*/  TAG ; 
 size_t WIFI_IF_STA ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/ ** s_wifi_netifs ; 

__attribute__((used)) static void FUNC4(void *arg, esp_event_base_t base, int32_t event_id, void *data)
{
    if (s_wifi_netifs[WIFI_IF_STA] != NULL) {
        FUNC0(TAG, "Got IP wifi default handler entered");
        int ret = FUNC3();
        if (ret != ESP_OK) {
            FUNC1(TAG, "esp_wifi_internal_set_sta_ip failed with %d", ret);
        }
        FUNC2(s_wifi_netifs[WIFI_IF_STA], base, event_id, data);
    }
}