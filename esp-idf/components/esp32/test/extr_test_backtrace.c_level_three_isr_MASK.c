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
 int /*<<< orphan*/  RECUR_DEPTH ; 
 int SW_ISR_LEVEL_3 ; 
 int /*<<< orphan*/  backtrace_trigger_source ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2 (void *arg)
{
    FUNC1(1 << SW_ISR_LEVEL_3);                           //Clear interrupt
    FUNC0(RECUR_DEPTH, backtrace_trigger_source);         //Abort at the max recursive depth
}