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
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int portTICK_PERIOD_MS ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/ * wifi_events ; 

__attribute__((used)) static void FUNC6(void)
{
    FUNC3("stop wifi\n");
    FUNC0(FUNC2());
    FUNC0(FUNC1());
    if (wifi_events) {
        FUNC4(wifi_events);
        wifi_events = NULL;
    }
    FUNC5(1000/portTICK_PERIOD_MS);
}