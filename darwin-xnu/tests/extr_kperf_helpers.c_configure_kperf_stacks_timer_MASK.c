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
typedef  int pid_t ;

/* Variables and functions */
 int KPERF_SAMPLER_KSTACK ; 
 int KPERF_SAMPLER_USTACK ; 
 unsigned int NSEC_PER_MSEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC9(pid_t pid, unsigned int period_ms)
{
    FUNC5();

    (void)FUNC1(1);
    (void)FUNC7(1);

    FUNC0(FUNC3(1,
        KPERF_SAMPLER_USTACK | KPERF_SAMPLER_KSTACK), NULL);

    if (pid != -1) {
        FUNC0(FUNC2(1, pid), NULL);
    }

    FUNC0(FUNC6(0, 1), NULL);
    FUNC0(FUNC8(0,
        FUNC4(period_ms * NSEC_PER_MSEC)), NULL);
}