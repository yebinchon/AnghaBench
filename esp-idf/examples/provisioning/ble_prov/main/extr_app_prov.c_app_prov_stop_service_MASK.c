#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  pc; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_BT_MODE_BTDM ; 
 int /*<<< orphan*/  ESP_EVENT_ANY_ID ; 
 int /*<<< orphan*/  IP_EVENT ; 
 int /*<<< orphan*/  IP_EVENT_STA_GOT_IP ; 
 int /*<<< orphan*/  WIFI_EVENT ; 
 int /*<<< orphan*/  app_prov_event_handler ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* g_prov ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC7(void)
{
    /* Remove provisioning endpoint */
    FUNC4(g_prov->pc, "prov-config");
    /* Unset provisioning security */
    FUNC5(g_prov->pc, "prov-session");
    /* Unset provisioning version endpoint */
    FUNC6(g_prov->pc, "proto-ver");
    /* Stop protocomm ble service */
    FUNC2(g_prov->pc);
    /* Delete protocomm instance */
    FUNC3(g_prov->pc);

    /* Remove event handler */
    FUNC1(WIFI_EVENT, ESP_EVENT_ANY_ID, app_prov_event_handler);
    FUNC1(IP_EVENT, IP_EVENT_STA_GOT_IP, app_prov_event_handler);

    /* Release memory used by BT stack */
    FUNC0(ESP_BT_MODE_BTDM);
}