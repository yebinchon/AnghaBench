#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ password; scalar_t__ ssid; } ;
struct TYPE_5__ {TYPE_1__ sta; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ wifi_config_t ;

/* Variables and functions */
 int CONNECTED_BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESP_IF_WIFI_STA ; 
 int /*<<< orphan*/  WIFI_MODE_STA ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  pdFALSE ; 
 int /*<<< orphan*/  pdTRUE ; 
 int portTICK_PERIOD_MS ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int) ; 
 int /*<<< orphan*/  wifi_event_group ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool FUNC7(const char *ssid, const char *pass, int timeout_ms)
{
    FUNC4();
    wifi_config_t wifi_config = { 0 };
    FUNC5((char *) wifi_config.sta.ssid, ssid, sizeof(wifi_config.sta.ssid));
    if (pass) {
        FUNC5((char *) wifi_config.sta.password, pass, sizeof(wifi_config.sta.password));
    }

    FUNC0( FUNC3(WIFI_MODE_STA) );
    FUNC0( FUNC2(ESP_IF_WIFI_STA, &wifi_config) );
    FUNC0( FUNC1() );

    int bits = FUNC6(wifi_event_group, CONNECTED_BIT,
                                   pdFALSE, pdTRUE, timeout_ms / portTICK_PERIOD_MS);
    return (bits & CONNECTED_BIT) != 0;
}