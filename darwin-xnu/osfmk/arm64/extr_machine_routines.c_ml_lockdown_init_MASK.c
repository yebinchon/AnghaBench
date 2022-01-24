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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * lockdown_handler_grp ; 
 int /*<<< orphan*/  lockdown_handler_lck ; 

void FUNC3() {
    lockdown_handler_grp = FUNC1("lockdown_handler", NULL);
    FUNC0(lockdown_handler_grp != NULL);

    FUNC2(&lockdown_handler_lck, lockdown_handler_grp, NULL);

}