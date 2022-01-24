#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int nvs_enable; } ;
typedef  TYPE_1__ wifi_init_config_t ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_HANDLER_FLAG_DO_NOT_AUTO_RECONNECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC1 () ; 
 int /*<<< orphan*/  WIFI_MODE_STA ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  wifi_event_handler_flag ; 
 int /*<<< orphan*/ * wifi_events ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC8 () ; 

__attribute__((used)) static void FUNC9(void)
{
    wifi_init_config_t cfg = FUNC1();
    cfg.nvs_enable = false;

    // do not auto connect
    wifi_event_handler_flag |= EVENT_HANDLER_FLAG_DO_NOT_AUTO_RECONNECT;
    FUNC5();

    // can't deinit event loop, need to reset leak check
    FUNC6();

    if (wifi_events == NULL) {
        wifi_events = FUNC8();
    } else {
        FUNC7(wifi_events, 0x00ffffff);
    }

    FUNC0(FUNC2(&cfg));
    FUNC0(FUNC3(WIFI_MODE_STA));
    FUNC0(FUNC4());

}