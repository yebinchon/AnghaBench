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
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int portTICK_RATE_MS ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  start ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(void)
{
    FUNC6("Trigger deep sleep. Waiting for 10 sec ...\n");

    // Simulate the dispersion of the calibration coefficients at start-up.
    // Corrupt the calibration factor.
    FUNC1(FUNC0() / 2);
    FUNC3();

    // Delay for time error accumulation.
    FUNC7(10000/portTICK_RATE_MS);

    // Save start time. Deep sleep.
    FUNC5(&start, NULL);
    FUNC4(1000);
    // In function esp_deep_sleep_start() uses function esp_sync_counters_rtc_and_frc()
    // to prevent a negative time after wake up.
    FUNC2();
}