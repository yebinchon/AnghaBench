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
typedef  scalar_t__ esp_sleep_wakeup_cause_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ESP_SLEEP_WAKEUP_ULP ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 

void FUNC7(void)
{
    esp_sleep_wakeup_cause_t cause = FUNC3();
    if (cause != ESP_SLEEP_WAKEUP_ULP) {
        FUNC5("Not ULP wakeup, initializing ULP\n");
        FUNC4();
    } else {
        FUNC5("ULP wakeup, saving pulse count\n");
        FUNC6();
    }

    FUNC5("Entering deep sleep\n\n");
    FUNC0( FUNC2() );
    FUNC1();
}