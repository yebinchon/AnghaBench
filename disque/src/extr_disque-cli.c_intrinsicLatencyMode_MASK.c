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
struct TYPE_2__ {int intrinsic_latency_duration; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__ config ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ force_cancel_loop ; 
 int /*<<< orphan*/  intrinsicLatencyModeStop ; 
 int /*<<< orphan*/  FUNC2 (char*,long long,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long long FUNC4 () ; 

__attribute__((used)) static void FUNC5(void) {
    long long test_end, run_time, max_latency = 0, runs = 0;

    run_time = config.intrinsic_latency_duration*1000000;
    test_end = FUNC4() + run_time;
    FUNC3(SIGINT, intrinsicLatencyModeStop);

    while(1) {
        long long start, end, latency;

        start = FUNC4();
        FUNC0();
        end = FUNC4();
        latency = end-start;
        runs++;
        if (latency <= 0) continue;

        /* Reporting */
        if (latency > max_latency) {
            max_latency = latency;
            FUNC2("Max latency so far: %lld microseconds.\n", max_latency);
        }

        double avg_us = (double)run_time/runs;
        double avg_ns = avg_us * 10e3;
        if (force_cancel_loop || end > test_end) {
            FUNC2("\n%lld total runs "
                "(avg latency: "
                "%.4f microseconds / %.2f nanoseconds per run).\n",
                runs, avg_us, avg_ns);
            FUNC2("Worst run took %.0fx longer than the average latency.\n",
                max_latency / avg_us);
            FUNC1(0);
        }
    }
}