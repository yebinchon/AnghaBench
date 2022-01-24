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
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  YAB_THREAD_SCSP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  scsp_clock ; 
 scalar_t__ scsp_clock_target ; 

__attribute__((used)) static void FUNC4(void)
{
   FUNC0();
   while (FUNC1(scsp_clock) != scsp_clock_target)
   {
      FUNC2(YAB_THREAD_SCSP);
      FUNC3();
   }
}