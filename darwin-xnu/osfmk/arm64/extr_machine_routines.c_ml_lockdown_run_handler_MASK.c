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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int lockdown_done ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lockdown_handler_lck ; 
 int /*<<< orphan*/  lockdown_this ; 

void FUNC4() {
    FUNC1(&lockdown_handler_lck);
    FUNC0(!lockdown_done);

    lockdown_done = 1;
    if (&lockdown_handler) {
        FUNC3(lockdown_this);
    }
    FUNC2(&lockdown_handler_lck);
}