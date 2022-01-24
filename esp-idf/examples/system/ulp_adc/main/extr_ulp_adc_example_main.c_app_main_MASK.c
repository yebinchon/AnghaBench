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
 int UINT16_MAX ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int ulp_high_thr ; 
 int ulp_last_result ; 
 int ulp_low_thr ; 
 int ulp_sample_counter ; 

void FUNC7(void)
{
    esp_sleep_wakeup_cause_t cause = FUNC3();
    if (cause != ESP_SLEEP_WAKEUP_ULP) {
        FUNC5("Not ULP wakeup\n");
        FUNC4();
    } else {
        FUNC5("Deep sleep wakeup\n");
        FUNC5("ULP did %d measurements since last reset\n", ulp_sample_counter & UINT16_MAX);
        FUNC5("Thresholds:  low=%d  high=%d\n", ulp_low_thr, ulp_high_thr);
        ulp_last_result &= UINT16_MAX;
        FUNC5("Value=%d was %s threshold\n", ulp_last_result,
                ulp_last_result < ulp_low_thr ? "below" : "above");
    }
    FUNC5("Entering deep sleep\n\n");
    FUNC6();
    FUNC0( FUNC2() );
    FUNC1();
}