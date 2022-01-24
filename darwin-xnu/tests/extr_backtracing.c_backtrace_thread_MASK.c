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
 unsigned int NON_RECURSE_FRAMES ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,unsigned int) ; 
 unsigned int USER_FRAMES ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 

__attribute__((used)) static void *
FUNC2(void *arg)
{
#pragma unused(arg)
    unsigned int calls;

    /*
     * backtrace_thread, recurse_a, recurse_b, ..., __sysctlbyname
     *
     * Always make one less call for this frame (backtrace_thread).
     */
    calls = USER_FRAMES - NON_RECURSE_FRAMES;

    FUNC0("backtrace thread calling into %d frames (already at %d frames)",
       calls, NON_RECURSE_FRAMES);
    (void)FUNC1(calls);
    return NULL;
}