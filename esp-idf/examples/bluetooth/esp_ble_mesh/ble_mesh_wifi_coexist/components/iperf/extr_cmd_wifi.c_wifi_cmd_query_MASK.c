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
typedef  scalar_t__ wifi_mode_t ;
struct TYPE_4__ {int /*<<< orphan*/  ssid; int /*<<< orphan*/  password; } ;
struct TYPE_5__ {TYPE_1__ ap; } ;
typedef  TYPE_2__ wifi_config_t ;

/* Variables and functions */
 int CONNECTED_BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  WIFI_IF_AP ; 
 int /*<<< orphan*/  WIFI_IF_STA ; 
 scalar_t__ WIFI_MODE_AP ; 
 scalar_t__ WIFI_MODE_STA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 int /*<<< orphan*/  wifi_event_group ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(int argc, char **argv)
{
    wifi_config_t cfg;
    wifi_mode_t mode;

    FUNC2(&mode);
    if (WIFI_MODE_AP == mode) {
        FUNC1(WIFI_IF_AP, &cfg);
        FUNC0(TAG, "AP mode, %s %s", cfg.ap.ssid, cfg.ap.password);
    } else if (WIFI_MODE_STA == mode) {
        int bits = FUNC3(wifi_event_group, CONNECTED_BIT, 0, 1, 0);
        if (bits & CONNECTED_BIT) {
            FUNC1(WIFI_IF_STA, &cfg);
            FUNC0(TAG, "sta mode, connected %s", cfg.ap.ssid);
        } else {
            FUNC0(TAG, "sta mode, disconnected");
        }
    } else {
        FUNC0(TAG, "NULL mode");
        return 0;
    }

    return 0;
}