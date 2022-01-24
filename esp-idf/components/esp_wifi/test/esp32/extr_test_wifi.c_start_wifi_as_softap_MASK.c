#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int nvs_enable; } ;
typedef  TYPE_2__ wifi_init_config_t ;
struct TYPE_7__ {int channel; int ssid_hidden; int max_connection; int beacon_interval; int /*<<< orphan*/  authmode; int /*<<< orphan*/  ssid_len; int /*<<< orphan*/  password; int /*<<< orphan*/  ssid; } ;
struct TYPE_9__ {TYPE_1__ ap; } ;
typedef  TYPE_3__ wifi_config_t ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_PWD ; 
 int /*<<< orphan*/  DEFAULT_SSID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WIFI_AUTH_WPA2_PSK ; 
 int /*<<< orphan*/  WIFI_IF_AP ; 
 TYPE_2__ FUNC1 () ; 
 int /*<<< orphan*/  WIFI_MODE_AP ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/ * wifi_events ; 
 int /*<<< orphan*/ * FUNC8 () ; 

__attribute__((used)) static void FUNC9(void)
{
    wifi_init_config_t cfg = FUNC1();
    cfg.nvs_enable = false;

    wifi_config_t w_config = {
        .ap.ssid = DEFAULT_SSID,
        .ap.password = DEFAULT_PWD,
        .ap.ssid_len = 0,
        .ap.channel = 1,
        .ap.authmode = WIFI_AUTH_WPA2_PSK,
        .ap.ssid_hidden = false,
        .ap.max_connection = 4,
        .ap.beacon_interval = 100,
    };

    FUNC6();

    // can't deinit event loop, need to reset leak check
    FUNC7();

    if (wifi_events == NULL) {
        wifi_events = FUNC8();
    }

    FUNC0(FUNC2(&cfg));
    FUNC0(FUNC4(WIFI_MODE_AP));
    FUNC0(FUNC3(WIFI_IF_AP, &w_config));
    FUNC0(FUNC5());
}