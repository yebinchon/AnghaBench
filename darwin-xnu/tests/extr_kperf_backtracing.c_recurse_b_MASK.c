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
typedef  scalar_t__ dispatch_semaphore_t ;

/* Variables and functions */
 int /*<<< orphan*/  TRIGGERING_DEBUGID ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__,unsigned int) ; 

__attribute__((used)) static int __attribute__((noinline,not_tail_called))
FUNC3(dispatch_semaphore_t spinning, unsigned int frames)
{
    if (frames == 0) {
        if (spinning) {
            FUNC0(spinning);
            for (;;);
        } else {
            FUNC1(TRIGGERING_DEBUGID, 0, 0, 0, 0);
            return 0;
        }
    }

    return FUNC2(spinning, frames - 1) + 1;
}