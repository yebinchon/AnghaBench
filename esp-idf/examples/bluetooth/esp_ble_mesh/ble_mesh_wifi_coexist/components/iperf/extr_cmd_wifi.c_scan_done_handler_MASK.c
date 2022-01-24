#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  rssi; int /*<<< orphan*/  ssid; } ;
typedef  TYPE_1__ wifi_ap_record_t ;
typedef  int uint8_t ;
typedef  int uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 scalar_t__ FUNC3 (int*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_1__* FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(void)
{
    uint16_t sta_number = 0;
    uint8_t i;
    wifi_ap_record_t *ap_list_buffer;

    FUNC2(&sta_number);
    ap_list_buffer = FUNC5(sta_number * sizeof(wifi_ap_record_t));
    if (ap_list_buffer == NULL) {
        FUNC0(TAG, "Failed to malloc buffer to print scan results");
        return;
    }

    if (FUNC3(&sta_number, (wifi_ap_record_t *)ap_list_buffer) == ESP_OK) {
        for (i = 0; i < sta_number; i++) {
            FUNC1(TAG, "[%s][rssi=%d]", ap_list_buffer[i].ssid, ap_list_buffer[i].rssi);
        }
    }
    FUNC4(ap_list_buffer);
}