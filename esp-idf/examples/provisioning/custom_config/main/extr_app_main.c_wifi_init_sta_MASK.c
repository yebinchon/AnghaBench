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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESP_EVENT_ANY_ID ; 
 int /*<<< orphan*/  IP_EVENT ; 
 int /*<<< orphan*/  IP_EVENT_STA_GOT_IP ; 
 int /*<<< orphan*/  WIFI_EVENT ; 
 int /*<<< orphan*/  WIFI_MODE_STA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  event_handler ; 

__attribute__((used)) static void FUNC4(void)
{
    /* Set our event handling */
    FUNC0(FUNC1(WIFI_EVENT, ESP_EVENT_ANY_ID, event_handler, NULL));
    FUNC0(FUNC1(IP_EVENT, IP_EVENT_STA_GOT_IP, event_handler, NULL));

    /* Start Wi-Fi in station mode with credentials set during provisioning */
    FUNC0(FUNC2(WIFI_MODE_STA));
    FUNC0(FUNC3());
}