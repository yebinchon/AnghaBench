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
 int /*<<< orphan*/  RARCH_CTL_IS_PERFCNT_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  perf_counters_rarch ; 
 int /*<<< orphan*/  perf_ptr_rarch ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC3(void)
{
   if (!FUNC2(RARCH_CTL_IS_PERFCNT_ENABLE, NULL))
      return;

   FUNC0("[PERF]: Performance counters (RetroArch):\n");
   FUNC1(perf_counters_rarch, perf_ptr_rarch);
}