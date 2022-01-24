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
typedef  int /*<<< orphan*/  system_event_id_t ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  scalar_t__ esp_event_base_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ IP_EVENT ; 
 int /*<<< orphan*/  SYSTEM_EVENT_MAX ; 
 int /*<<< orphan*/  TAG ; 
 scalar_t__ WIFI_EVENT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static system_event_id_t FUNC3(esp_event_base_t event_base, int32_t event_id)
{
    if (event_base == WIFI_EVENT) {
        return FUNC2(event_id);
    } else if (event_base == IP_EVENT) {
        return FUNC1(event_id);
    } else {
        FUNC0(TAG, "invalid event base %s", event_base);
        return SYSTEM_EVENT_MAX;
    }
}