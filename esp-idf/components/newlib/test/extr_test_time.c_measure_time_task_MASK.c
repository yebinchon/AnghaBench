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
typedef  int /*<<< orphan*/  xSemaphoreHandle ;
struct timeval {int tv_sec; int tv_usec; } ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct timeval*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int exit_flag ; 
 int /*<<< orphan*/  FUNC5 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__* result_adjtime_correction_us ; 
 int /*<<< orphan*/  FUNC7 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(void *pvParameters)
{
    xSemaphoreHandle *sema = (xSemaphoreHandle *) pvParameters;
    int64_t main_real_time_us[2];
    int64_t main_sys_time_us[2];
    struct timeval tv_time = {.tv_sec = 1550000000, .tv_usec = 0};
    FUNC0(0, FUNC7(&tv_time, NULL));
    struct timeval delta = {.tv_sec = 2000, .tv_usec = 900000};
    FUNC2(&delta, NULL);
    FUNC5(&tv_time, NULL);
    FUNC8(&main_sys_time_us[0], &main_real_time_us[0]);

    {
        int64_t real_time_us[2] = { main_real_time_us[0], 0};
        int64_t sys_time_us[2] = { main_sys_time_us[0], 0};
        // although exit flag is set in another task, checking (exit_flag == false) is safe
        while (exit_flag == false) {
            FUNC4(2 * 1000000); // 2 sec

            FUNC8(&sys_time_us[1], &real_time_us[1]);
            result_adjtime_correction_us[1] += FUNC3("measure", sys_time_us, real_time_us);

            sys_time_us[0]  = sys_time_us[1];
            real_time_us[0] = real_time_us[1];
        }
        main_sys_time_us[1] = sys_time_us[1];
        main_real_time_us[1] = real_time_us[1];
    }

    result_adjtime_correction_us[0] = FUNC3("main", main_sys_time_us, main_real_time_us);
    int64_t delta_us = result_adjtime_correction_us[0] - result_adjtime_correction_us[1];
    FUNC6("\nresult of adjtime correction: %lli us, %lli us. delta = %lli us\n", result_adjtime_correction_us[0], result_adjtime_correction_us[1], delta_us);
    FUNC1(100, 0, delta_us);

    FUNC10(*sema);
    FUNC9(NULL);
}