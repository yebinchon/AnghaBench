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
 int /*<<< orphan*/  CONNECTED_BIT ; 
 int /*<<< orphan*/  DISCONNECTED_BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ reconnect ; 
 int /*<<< orphan*/  wifi_event_group ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void* arg, esp_event_base_t event_base,
                               int32_t event_id, void* event_data)
{
    if (reconnect) {
        FUNC0(TAG, "sta disconnect, reconnect...");
        FUNC1();
    } else {
        FUNC0(TAG, "sta disconnect");
    }
    FUNC2(wifi_event_group, CONNECTED_BIT);
    FUNC3(wifi_event_group, DISCONNECTED_BIT);
}