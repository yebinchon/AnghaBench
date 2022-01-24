#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * esp_timer_handle_t ;
struct TYPE_3__ {int /*<<< orphan*/ * timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  WIFI_MODE_STA ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_1__* g_prov ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(void * arg)
{
    FUNC0(TAG, "Stopping provisioning");
    FUNC1();
    FUNC3(WIFI_MODE_STA);

    /* Timer not needed anymore */
    esp_timer_handle_t timer = g_prov->timer;
    FUNC2(timer);
    g_prov->timer = NULL;

    /* Free provisioning process data */
    FUNC4(g_prov);
    g_prov = NULL;
    FUNC0(TAG, "Provisioning stopped");

    FUNC5(NULL);
}