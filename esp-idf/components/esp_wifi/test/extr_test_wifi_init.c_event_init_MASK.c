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
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESP_EVENT_ANY_ID ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  IP_EVENT ; 
 int /*<<< orphan*/  WIFI_EVENT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  ip_event_handler ; 
 int /*<<< orphan*/  wifi_event_handler ; 

__attribute__((used)) static esp_err_t FUNC3(void)
{
    FUNC0(FUNC2());
    FUNC0(FUNC1(WIFI_EVENT, ESP_EVENT_ANY_ID, &wifi_event_handler, NULL));
    FUNC0(FUNC1(IP_EVENT, ESP_EVENT_ANY_ID, &ip_event_handler, NULL));
    return ESP_OK;
}