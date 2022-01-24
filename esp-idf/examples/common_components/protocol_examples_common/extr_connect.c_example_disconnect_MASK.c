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
 int /*<<< orphan*/  ESP_ERR_INVALID_STATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/ * s_connect_event_group ; 
 int /*<<< orphan*/ * s_connection_name ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

esp_err_t FUNC3(void)
{
    if (s_connect_event_group == NULL) {
        return ESP_ERR_INVALID_STATE;
    }
    FUNC2(s_connect_event_group);
    s_connect_event_group = NULL;
    FUNC1();
    FUNC0(TAG, "Disconnected from %s", s_connection_name);
    s_connection_name = NULL;
    return ESP_OK;
}